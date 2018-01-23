cask 'mactracker' do
  version '7.7.1'
  sha256 '5f8c945d25c8511c66ce0c3fda595ac9d9534b3edff11c2be47a0f9bb99f0cb3'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '3c11dca8a1dbdc9f562d4ca3cb5c433de9edf61ee4acfa7b5889f05834f52029'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
