cask 'dotnet-sdk' do
  version '2.2.104'
  sha256 '4494b2084d6fba0e7e708faee1237b3a596bc6030cdb81579a24df85ec651d72'

  url "https://download.visualstudio.microsoft.com/download/pr/b06123e8-af2a-4196-acf9-39c3abd6cd6b/f12a2e3b64dc6574e9f530001d1e4a2a/dotnet-sdk-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet',
                         'dotnet-preview',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  [
                       '/etc/paths.d/dotnet',
                       '/etc/paths.d/dotnet-cli-tools',
                     ]

  zap trash: '~/.nuget'
end
