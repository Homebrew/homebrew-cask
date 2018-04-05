cask 'dotnet-sdk' do
  version '2.1.104'
  sha256 '54a07c879840d0e34529f4b83a6323e6bbdf88f7347564f8d53f94e5d684e3c4'

  url "https://download.microsoft.com/download/D/8/1/D8131218-F121-4E13-8C5F-39B09A36E406/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
