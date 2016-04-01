cask 'principle' do
  version '1.1.0'
  sha256 '05e5d9f6cde4073607dd5280bbc6a2d9acc5c0d6334681a960db8f44e83eb246'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: 'db01aad181ad31f87275ec577c8b2b822dc89512f0175fdfd579ae3ee4589c40'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
