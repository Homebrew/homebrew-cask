cask 'figma' do
  version :latest
  sha256 :no_check

  url 'https://desktop.figma.com/mac/Figma.zip'
  name 'Figma'
  homepage 'https://www.figma.com/'
  license :commercial

  app 'Figma.app'
end
