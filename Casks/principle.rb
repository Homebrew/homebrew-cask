cask 'principle' do
  version '1.2.1'
  sha256 '721901792558c4367509b44f4a58c6631617781ab46da7f8a2496b6c157bc84e'

  # dropboxusercontent.com is the official download host per the vendor homepage
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '6919925da47287b45e2d9748b8bc41e6b5f38098c2311093496783b662a7e838'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
