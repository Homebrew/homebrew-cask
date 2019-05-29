cask 'microsoft-teams' do
  version '1.2.00.8866'
  sha256 'dad8665cf85a8a5f4ba4daafb9ce2a5220311f0668f5b5425c9f9d2a1be3331f'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
