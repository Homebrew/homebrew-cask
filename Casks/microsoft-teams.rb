cask 'microsoft-teams' do
  version '1.2.00.17856'
  sha256 '09cab03f971e374e1beab5ee81cda7d9e7365cc7c616d17899e0d13c9079e485'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
