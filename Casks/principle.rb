cask 'principle' do
  version '1.2.7'
  sha256 '9d888aad31635761412cb0516445e1137edd6bd7303ec1cb8dc9f2bf2b86a440'

  # dl.dropboxusercontent.com/u/13897407 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: 'e104e28adcc9612ef6b52986437c41909f375995e2f85353c8f8e6110b08d2f8'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
