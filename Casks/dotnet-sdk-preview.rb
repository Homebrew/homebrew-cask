cask 'dotnet-sdk-preview' do
  version '2.0.0-preview2'
  sha256 'de675118efc09f80d4f2927b791b64806e7fbbd640b56d408b92d4e6ce4b167c'

  url "https://download.microsoft.com/download/6/1/B/61B3E81F-5509-48D2-BB4F-5189E23CD29A/dotnet-sdk-#{version}-006497-osx-x64.pkg"
  name '.NET Core 2.0 SDK Preview'
  homepage 'https://www.microsoft.com/net/core/preview#macos'

  pkg "dotnet-sdk-#{version}-006497-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.sharedframework.Microsoft.NETCore.App.2*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
