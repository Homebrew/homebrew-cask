cask 'dotnet' do
  version '2.2.2'
  sha256 '263cd8ea9c4579908ba6fb6b4c5f54170a533304ebce4074cc1df6bd0af3250a'

  url "https://download.visualstudio.microsoft.com/download/pr/eb9047cf-9d6f-472a-940e-05f018cdb29e/62c457d7f2ead9eccc099978f038c1f8/dotnet-runtime-#{version}-osx-x64.pkg"
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
