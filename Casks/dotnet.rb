cask 'dotnet' do
  version '1.1.2'
  sha256 '6f7b90c38f90944c94312161561d6f9f4baaaaca4601c3d5ca3947402d4ff26c'

  url "https://download.microsoft.com/download/D/0/2/D028801E-0802-43C8-9F9F-C7DB0A39B344/dotnet-osx-x64.#{version}.pkg"
  name '.Net Core'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-osx-x64.#{version}.pkg"

  # Patch .NET Core to use the latest version of OpenSSL installed via Homebrew.
  # https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md#openssl
  postflight do
    dotnet_core = "/usr/local/share/dotnet/shared/Microsoft.NETCore.App/#{version}"
    system_command '/usr/bin/install_name_tool',
                   args: [
                           "#{dotnet_core}/System.Security.Cryptography.Native.OpenSsl.dylib",
                           '-add_rpath', "#{HOMEBREW_PREFIX}/opt/openssl/lib"
                         ],
                   sudo: true
    system_command '/usr/bin/install_name_tool',
                   args: [
                           "#{dotnet_core}/System.Net.Http.Native.dylib",
                           '-change', '/usr/lib/libcurl.4.dylib',
                           "#{HOMEBREW_PREFIX}/opt/curl/lib/libcurl.4.dylib"
                         ],
                   sudo: true
  end

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
