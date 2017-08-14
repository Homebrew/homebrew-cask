cask 'dotnet-sdk' do
  version '2.0.0'
  sha256 '69300051d696f5ae8e42bd79e5aa13a08116723d79c324fd248df7ead2869291'

  url "https://download.microsoft.com/download/0/F/D/0FD852A4-7EA1-4E2A-983A-0484AC19B92C/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  # Patch .NET Core to use the latest version of OpenSSL installed via Homebrew.
  # https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md#openssl
  postflight do
    run_times = ['2.0.0']
    run_times.each do |version|
      dotnet_core = "/usr/local/share/dotnet/shared/Microsoft.NETCore.App/#{version}"
      open_ssl_lib = 'System.Security.Cryptography.Native.OpenSsl.dylib'

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
