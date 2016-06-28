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
    In order to use .NET Core, we first need the latest version of OpenSSL.
    The easiest way to get this is from Homebrew. After installing brew, do the following:

      brew link --force openssl
  EOS
end
