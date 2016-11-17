cask 'dotnet' do
  version '1.0.0-preview2-1-003177,1.0.3'
  sha256 'be009582107b6eb58196a1e417e02c11d7da182669cd47a4c2a42f512e112fea'

  url "https://download.microsoft.com/download/1/4/1/141760B3-805B-4583-B17C-8C5BC5A876AB/Installers/dotnet-dev-osx-x64.#{version.before_comma}.pkg"
  name '.Net Core'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-dev-osx-x64.#{version.before_comma}.pkg"

  # Patch .NET Core to use the latest version of OpenSSL installed via Homebrew.
  # https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md#openssl
  postflight do
    dotnet_core = "/usr/local/share/dotnet/shared/Microsoft.NETCore.App/#{version.after_comma}"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/install_name_tool', "#{dotnet_core}/System.Security.Cryptography.Native.dylib", '-add_rpath', "#{HOMEBREW_PREFIX}/opt/openssl/lib"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/install_name_tool', "#{dotnet_core}/System.Net.Http.Native.dylib", '-change', '/usr/lib/libcurl.4.dylib', "#{HOMEBREW_PREFIX}/opt/curl/lib/libcurl.4.dylib"
  end

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap delete: '~/.nuget'
end
