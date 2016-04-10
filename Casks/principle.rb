cask 'principle' do
  version '1.1.2'
  sha256 'a07d17c8611f5d27d83e325f775a3abcff72804b2a2171093ebb4374259f4702'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '1b4e33c83e56da79ec891bba2e9d1342b6d9706ab8ab57af64d681c538d0dadf'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
