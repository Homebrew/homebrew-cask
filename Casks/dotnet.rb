cask 'dotnet' do
  version '2.2.1'
  sha256 '10d1893ef62861f3e1491f35b05a7f0279fad34b6f97c35a172c04b34987448e' # DevSkim: ignore DS173237

  url "https://download.visualstudio.microsoft.com/download/pr/80a93bfc-dd53-474b-94f4-1dea02dec70c/eab2c0d078899ad0d8f8a15bf84a7f63/dotnet-runtime-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.Net Core Runtime'
  homepage 'https://www.microsoft.com/net/core#macos'

  conflicts_with cask: [
                         'dotnet-sdk',
                         'dotnet-preview',
                         'dotnet-sdk-preview',
                       ]
  depends_on macos: '>= :sierra'

  pkg "dotnet-runtime-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
