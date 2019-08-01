cask 'microsoft-teams' do
  version '1.2.00.13765'
  sha256 'b991b177a9442eb237869e23df63abe83a29cbc2054d97a7459d08cc79121f4c'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
