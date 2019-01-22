cask 'microsoft-teams' do
  version '1.1.00.31953'
  sha256 '29d1755ba93e668ab04df2f0ebfbcb03eba5e180bc724aa881e91515b3237a8f'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
