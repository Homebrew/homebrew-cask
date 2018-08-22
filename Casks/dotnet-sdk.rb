cask 'dotnet-sdk' do
  version '2.1.401'
  sha256 '83af1dc6fdcf9847b7e27d0b6eb8272b0319d72380c6a2c0a87cc29b2978b390'

  url "https://download.microsoft.com/download/E/8/A/E8AF2EE0-5DDA-4420-A395-D1A50EEFD83E/dotnet-sdk-#{version}-osx-x64.pkg"
  appcast 'https://www.microsoft.com/net/download/macos'
  name '.NET Core SDK'
  homepage 'https://www.microsoft.com/net/core#macos'

  depends_on macos: '>= :sierra'

  pkg "dotnet-sdk-#{version}-osx-x64.pkg"

  uninstall pkgutil: 'com.microsoft.dotnet.*',
            delete:  '/etc/paths.d/dotnet'

  zap trash: '~/.nuget'
end
