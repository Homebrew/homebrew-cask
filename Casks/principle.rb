cask 'principle' do
  version '2.0.6'
  sha256 '1820f400db72566698a3f4ce16c4ae6fc2ed7f6bc796ffe0158d328c6e5b54f5'

  # dl.dropboxusercontent.com/u/13897407 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: 'b29797807d5f46132632e0d92c23ee3e176afa43c12c0881f826bfc7eb2deace'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
