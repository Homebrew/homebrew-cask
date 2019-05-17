cask 'dotnet-sdk' do
  version '2.2.204'
  sha256 'bed6633d1e1811417cea2d701423ff0dec241f441b42395f618ec5bf5476e89a'

  url "https://download.visualstudio.microsoft.com/download/pr/fa52799f-b3cd-4d79-9869-a6b3997b96d7/20479fc2b7925ef40592a40ef89f3099/dotnet-sdk-#{version}-osx-x64.pkg"
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
