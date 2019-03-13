cask 'dotnet' do
  version '2.2.3'
  sha256 '85fa291a86baaed7ae7b2806ae610d40e96155c15eb64ebbc8c9572d9f7534b9'

  url "https://download.visualstudio.microsoft.com/download/pr/872243f8-de92-480f-accd-9a22304cd3f9/aad669c10799a3e6e1deac73e8559c49/dotnet-runtime-#{version}-osx-x64.pkg"
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
