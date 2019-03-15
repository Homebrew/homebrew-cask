cask 'dotnet-sdk' do
  version '2.2.105'
  sha256 '6e2ef0410cf22f88e6fe5dd5dc898aeb6c5e4162d99600e9e2c4d486f11b685c'

  url "https://download.visualstudio.microsoft.com/download/pr/4850aa8f-44a9-4c4a-9961-f18aa4d90ceb/07d790444f3ba6b412a76d6f1aced338/dotnet-sdk-#{version}-osx-x64.pkg"
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
