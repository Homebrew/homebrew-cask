cask 'dotnet-sdk' do
  version '2.2.107'
  sha256 'a163baac1a6e447367b67726669a3cf42b1a65c2f374e92c28c38d6753c210d2'

  url "https://download.visualstudio.microsoft.com/download/pr/d3392a3f-8437-4357-8ed1-58061a421ab7/4e354d4a659d1ac4b20ebacb2dedf656/dotnet-sdk-#{version}-osx-x64.pkg"
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
