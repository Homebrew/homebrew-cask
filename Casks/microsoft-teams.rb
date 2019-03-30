cask 'microsoft-teams' do
  version '1.2.00.3961'
  sha256 'ca1f0040e2815fc51a04be0caf7c085df10c7d4009ace9808bb680dcf613fd71'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
