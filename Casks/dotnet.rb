cask 'dotnet' do
  version '1.0.0-preview2-003131'
  sha256 '67415a46684be4ecdd3db69b235538d7f1583aaffd9ba79d3a10859a45a10623'

  url "https://download.microsoft.com/download/0/A/3/0A372822-205D-4A86-BFA7-084D2CBE9EDF/dotnet-dev-osx-x64.#{version}.pkg"
  name '.Net Core'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on formula: 'openssl'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

  # Patch .NET Core to use the latest version of OpenSSL installed via Homebrew.
  # https://github.com/PowerShell/PowerShell/blob/master/docs/installation/linux.md#openssl
  postflight do
    dotnet_core = '/usr/local/share/dotnet/shared/Microsoft.NETCore.App/1.0.1'
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/install_name_tool', "#{dotnet_core}/System.Security.Cryptography.Native.dylib", '-add_rpath', "#{HOMEBREW_PREFIX}/opt/openssl/lib"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/install_name_tool', "#{dotnet_core}/System.Net.Http.Native.dylib", '-change', '/usr/lib/libcurl.4.dylib', "#{HOMEBREW_PREFIX}/opt/curl/lib/libcurl.4.dylib"
  end

  uninstall pkgutil: 'com.microsoft.dotnet.*'

  zap delete: '~/.nuget'
end
