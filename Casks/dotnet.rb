cask 'dotnet' do
  version '2.1.5'
  sha256 '4475470a353233f50ea83775f86cfcec5c58d98c82cb3222600b44eb934bb656'

  url "https://download.visualstudio.microsoft.com/download/pr/b83df670-529a-4d28-b4f5-81c46d339ef9/6d23d425c2b0ffd9828c521dbf19ef63/dotnet-runtime-#{version}-osx-x64.pkg"
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
