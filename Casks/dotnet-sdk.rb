cask 'dotnet-sdk' do
  version '2.1.105'
  sha256 'aa075e797b7a382164c0ddcafaf60c40e9e28f213155ebc8da708059e81afcd8'

  url "https://download.microsoft.com/download/2/E/C/2EC018A0-A0FC-40A2-849D-AA692F68349E/dotnet-sdk-#{version}-osx-x64.pkg"
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
