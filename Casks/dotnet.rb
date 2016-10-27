cask 'dotnet' do
  version '1.0.0-preview2-003148,1.0.2'
  sha256 '1209b0c7c07f46cc402fd087f1135b780f298daafe2e690b9251f1eea3bc93a7'

  url "https://download.microsoft.com/download/1/0/C/10C868F3-EF61-47A7-95CF-FF2AE042D65F/dotnet-dev-osx-x64.#{version.before_comma}.pkg"
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

  uninstall pkgutil: 'com.microsoft.dotnet.*'

  zap delete: '~/.nuget'
end
