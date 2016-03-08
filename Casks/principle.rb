cask 'principle' do
  version '1.0.0'
  sha256 '1ce7ad65a04e781d0727a280dbc7b4fd4becd4ea81ef745478a559e3f5f95eb4'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '0b715ad200cff614b6e6dd9462db682dfd116dad5001bef175509f0b8aba3a51'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
