cask 'principle' do
  version '2.0.3'
  sha256 'e9ab0ed54f059002d58508441ff47ca0f7c88dc1d0d350c1d176931a156c5450'

  # dl.dropboxusercontent.com/u/13897407 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: 'c6a2d3371fb08182c907316c18019718ccd82c099d366cb0a7e3153ac79e9bbb'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
