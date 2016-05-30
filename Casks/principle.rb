cask 'principle' do
  version '1.2.3'
  sha256 '58e0c8ddb9814b009e2e0665a8305c638ed468a1c577f542a6628623fcbce823'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '94a66544a40b22a629c69320f8d2520ea1a15ab14a9431b45eebfd4de612d556'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
