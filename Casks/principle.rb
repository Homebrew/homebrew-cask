cask 'principle' do
  version '2.0'
  sha256 '42cd733ad462b4849fd6a5b8b50c5dab92e9668d113281c30db23203189aed4b'

  # dl.dropboxusercontent.com/u/13897407 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: 'e0e66f6b03362eddc6fd32950c8989ef00031d613e2977c14f40ddc407bb9c93'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
