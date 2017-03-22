cask 'dotnet' do
  version '1.1.1'
  sha256 'd77898110caf4b715392b93310467f7354204440a38da00b7d50bb5796a3de18'

  url "https://download.microsoft.com/download/9/5/1/95198156-644E-4CCE-8DA1-C41F7658510C/dotnet-osx-x64.#{version}.pkg"
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

  zap delete: '~/.nuget'
end
