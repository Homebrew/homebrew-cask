cask 'shift' do
  version 'v0.2.1'
  sha256 '1242774e9c0746acda15c8322bf69ad4e1f61ad40df6b8a790e85df8cdde5122'

  # github.com/nwittwer/shift was verified as official when first introduced to the cask
  url "https://github.com/nwittwer/shift/releases/download/#{version}/Shift.zip"
  appcast 'https://github.com/nwittwer/shift/releases.atom'
  name 'Shift'
  homepage 'https://shift.nickwittwer.com/'

  app 'Shift.app'
end
