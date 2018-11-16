cask 'dotnet-sdk' do
  version '2.1.500'
  sha256 '897de45f5764c3efb9a35d225eb668d355f24c34920a26a1310115658fee3283'

  url "https://download.visualstudio.microsoft.com/download/pr/59a7b78f-4e86-473b-b230-c84d15505cec/766e3e5f35e7bb9677dd785071c5fbf7/dotnet-sdk-#{version}-osx-x64.pkg"
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
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
