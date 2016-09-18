cask 'dotnet' do
  version '1.0.0-preview2-003131'
  sha256 '67415a46684be4ecdd3db69b235538d7f1583aaffd9ba79d3a10859a45a10623'

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
