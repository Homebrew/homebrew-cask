cask 'microsoft-teams' do
  version '1.2.00.21868'
  sha256 '6b537e7f3e1c6cee298a738cb3c567675ad556e0dd8702032aec7fbe51399551'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
