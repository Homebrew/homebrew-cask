cask 'dotnet-sdk' do
  version '2.2.103'
  sha256 'ed4c1c70661a5f65615659880b8615d611ea31aea6270d491c52042116424e49' # DevSkim: ignore DS173237

  url "https://download.visualstudio.microsoft.com/download/pr/7510db8c-1acb-42d0-9fdd-5d6f74e1d23c/ff6b732ab489dc1b3e3b566fa5f71080/dotnet-sdk-#{version}-osx-x64.pkg"
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

  zap trash: '~/.nuget'
end
