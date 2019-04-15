cask 'dotnet-sdk' do
  version '2.2.106'
  sha256 'b37c72440be563faca0a6044354c73bff67d55e20ab662d1c56cc9c21d27ffc7'

  url "https://download.visualstudio.microsoft.com/download/pr/4d0f3f47-4c25-4102-8df8-a6fe7b472677/d1e3684501ffb70df10879b831b2e70e/dotnet-sdk-#{version}-osx-x64.pkg"
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

  zap trash: [
               '~/.dotnet',
               '~/.nuget',
             ]
end
