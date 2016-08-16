cask 'dotnet' do
  version '1.0.0-preview2-003121'
  sha256 'c1ce17a46844291ee327c078e5c354cd5d90817ae2049c450a63522adf9b9c10'

  url "https://download.microsoft.com/download/0/A/3/0A372822-205D-4A86-BFA7-084D2CBE9EDF/dotnet-dev-osx-x64.#{version}.pkg"
  name '.Net Core'
  homepage 'https://www.microsoft.com/net/core#macos'
  license :mit

  depends_on formula: 'openssl'

  pkg "dotnet-dev-osx-x64.#{version}.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*'

  caveats <<-EOS.undent
    The latest version of OpenSSL is required to use .NET Core.
    It was already installed, but you may need to link it:

      ln -s /usr/local/opt/openssl/lib/libcrypto.1.0.0.dylib /usr/local/lib/
      ln -s /usr/local/opt/openssl/lib/libssl.1.0.0.dylib /usr/local/lib/

    Zsh users may need to symlink the dotnet binary:

      ln -s /usr/local/share/dotnet/dotnet /usr/local/bin
  EOS
end
