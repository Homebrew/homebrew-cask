cask 'mightytext' do
  version '2.92'
  sha256 '36e1bf8098ed2dd6260d8c7b2a18f6bd788adcbd1577bfc65fb934b8cd9c521a'

  url "https://mightytext.net/downloads/desktop-beta/MightyText-v#{version}.dmg"
  name 'MightyText'
  homepage 'https://mightytext.net/'

  app 'MightyText.app'

  postflight do
    suppress_move_to_applications key: 'suppressMoveToApplications'
  end
end
