cask 'dotnet' do
  version '1.0.0-preview2-003121'
  sha256 'c1ce17a46844291ee327c078e5c354cd5d90817ae2049c450a63522adf9b9c10'

  url "https://download.microsoft.com/download/0/A/3/0A372822-205D-4A86-BFA7-084D2CBE9EDF/dotnet-dev-osx-x64.#{version}.pkg"
  name '.Net Core'
  homepage 'https://www.microsoft.com/net/core#macos'
  license :mit

  depends_on formula: 'openssl'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

  # the dotnet package ships with crypto libraries expecting to find openssl
  # in /usr/local/lib, but it is installed keg only by homebrew
  postflight do
    system 'sudo', '-E', '--', 'install_name_tool', '-add_rpath',
           '/usr/local/opt/openssl/lib',
           '/usr/local/share/dotnet/shared/Microsoft.NETCore.App/1.0.0/System.Security.Cryptography.Native.dylib'
  end

  uninstall pkgutil: 'com.microsoft.dotnet.*'
end
