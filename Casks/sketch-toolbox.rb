cask 'sketch-toolbox' do
  version :latest
  sha256 :no_check

  url 'http://sketchtoolbox.com/Sketch%20Toolbox.zip'
  appcast 'http://sketchtoolbox.com/updates/appcast.xml',
          :checkpoint => '61636d433e619f4b56206366764c85f000715f7741d393ca30c214f36aad6c91'
  name 'Sketch Toolbox'
  homepage 'http://sketchtoolbox.com'
  license :mit

  app 'Sketch Toolbox.app'
end
