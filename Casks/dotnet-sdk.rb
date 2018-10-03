cask 'dotnet-sdk' do
  version '2.1.403'
  sha256 'd290cefddb4fbdf1215724c049d86b4ce09f5dc2c5a658e3c1645c368f34c31a'

  url "https://download.microsoft.com/download/8/A/7/8A765126-50CA-4C6F-890B-19AE47961E4B/dotnet-sdk-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
