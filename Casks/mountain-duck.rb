cask 'mountain-duck' do
  version '3.2.3.15107'
  sha256 '502b196c36488c251c3242ce4dc96821f4cb92f3fad42c361bac5030a975914f'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast "https://version.mountainduck.io/#{version.major}/macos/changelog.rss"
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'

  app 'Mountain Duck.app'
end
