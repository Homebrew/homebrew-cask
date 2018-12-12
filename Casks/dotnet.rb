cask 'dotnet' do
  version '2.2.0'
  sha256 '4ce52f6707eef78b4ed0ceb1f0576bb987720ad5903d468285337a3ef9b9a219' # DevSkim: ignore DS173237

  url "https://download.visualstudio.microsoft.com/download/pr/953c69dc-2b70-4237-89e8-d0675d8e89b7/4ccde130c14f69659da5826c0b2fbe95/dotnet-runtime-#{version}-osx-x64.pkg"
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
