cask 'dotnet-sdk' do
  version '1.1.1'
  sha256 '5b432bc4cf63ea63e8c28a089747feb8a10364e91dae734ca69942ea14188c81'

  url "https://download.microsoft.com/download/8/F/9/8F9659B9-E628-4D1A-B6BF-C3004C8C954B/dotnet-#{version}-sdk-osx-x64.pkg"
  name '.Net Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-#{version}-sdk-osx-x64.pkg"

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

  zap delete: '~/.nuget'
end
