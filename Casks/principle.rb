cask 'principle' do
  version '1.2.6'
  sha256 '5e382ac82eb462ddf341049b91f674fad454341a47524fe5f881144b412ea45c'

  # dl.dropboxusercontent.com/u/13897407 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '00ab0acf631d0426ff7e74f9ca7cd08a3322e114b926d0de06030750b4877383'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
