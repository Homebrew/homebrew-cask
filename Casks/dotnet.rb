cask 'dotnet' do
  version '2.2.6'
  sha256 'a11b08ccc66436443f7ba6d533c6f85c1711bd912274a07d2320fe9d2e669485'

  url "https://dotnet.microsoft.com/download/thank-you/dotnet-runtime-#{version}-macos-x64-installer"
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
  binary '/usr/local/share/dotnet/dotnet'

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
