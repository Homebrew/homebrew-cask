cask 'dotnet-sdk' do
  version '1.0.4'
  sha256 'ec1e1eafad419c86933a5c2c07841a9f4bd65f1145883cad2f95d5028bf70460'

  url "https://download.microsoft.com/download/B/9/F/B9F1AF57-C14A-4670-9973-CDF47209B5BF/dotnet-dev-osx-x64.#{version}.pkg"
  name '.Net Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

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
