cask 'principle' do
  version '2.0.4'
  sha256 '0d1945abb261b861f362e49ff8ef9d2ef639e3a8142de16a65c03bfe3b433614'

  # dl.dropboxusercontent.com/u/13897407 was verified as official when first introduced to the cask
  url "https://dl.dropboxusercontent.com/u/13897407/Principle_#{version.dots_to_underscores}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/13897407/buildTrain-601A6666-57A4-4C19-BDD3-1387B3CB9719.xml',
          checkpoint: '3d6e772585547425cbfa4e4e37451cfce969260dd738de16098e98b06576287d'
  name 'Principle'
  homepage 'http://principleformac.com/'
  license :commercial

  app 'Principle.app'
end
