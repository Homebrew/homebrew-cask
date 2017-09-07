cask 'softraid' do
  version '5.6.1'
  sha256 'dbe57f9bf12b30f062549c17d2b9bc265f9a5e8ef119d2a3e4fc760c2f32c012'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/pages/support/download_latest_version.html',
          checkpoint: '3a7ba39087451eeb130af00292390e5a52b65842bcbced57d9e554fcbbbfb4a6'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
