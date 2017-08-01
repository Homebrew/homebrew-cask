cask 'dotnet-sdk' do
  version '1.0.4'
  sha256 'ec1e1eafad419c86933a5c2c07841a9f4bd65f1145883cad2f95d5028bf70460'

  url "https://download.microsoft.com/download/B/9/F/B9F1AF57-C14A-4670-9973-CDF47209B5BF/dotnet-dev-osx-x64.#{version}.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

  # Patch .NET Core to use the latest version of OpenSSL installed via Homebrew.
  # https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md#openssl
  postflight do
    run_times = ['1.0.5', '1.1.2']
    run_times.each do |version|
      dotnet_core = "/usr/local/share/dotnet/shared/Microsoft.NETCore.App/#{version}"
      open_ssl_lib = version == '1.0.5' ? 'System.Security.Cryptography.Native.dylib' : 'System.Security.Cryptography.Native.OpenSsl.dylib'

      system_command '/usr/bin/install_name_tool',
                     args: [
                             "#{dotnet_core}/#{open_ssl_lib}",
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
  end

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
