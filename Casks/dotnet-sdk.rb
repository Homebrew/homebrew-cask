cask 'dotnet-sdk' do
  version '2.1.400'
  sha256 '2b8860307c04eab3db26d6a529813854391e727ba55b49b1bf0bcf25f5cf64ac'

  url "https://download.microsoft.com/download/9/D/2/9D2354BE-778B-42D6-BA4F-3CEF489A4FDE/dotnet-sdk-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
