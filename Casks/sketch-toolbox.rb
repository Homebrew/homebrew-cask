cask 'sketch-toolbox' do
  version :latest
  sha256 :no_check

  url 'http://sketchtoolbox.com/Sketch%20Toolbox.zip'
  appcast 'http://sketchtoolbox.com/updates/appcast.xml',
          :sha256 => 'f7f8618e435aa590d4e869658413b358324598a228619f325fad02dcc96c7f3c'
  name 'Sketch Toolbox'
  homepage 'http://sketchtoolbox.com'
  license :mit

  app 'Sketch Toolbox.app'
end
