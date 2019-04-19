cask 'microsoft-teams' do
  version '1.2.00.6957'
  sha256 'f9802f37da8827f04121c4ea5df5a890dd3d07525a126ec8b2b2ea387f2a6585'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
