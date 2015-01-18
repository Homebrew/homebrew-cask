cask :v1 => 'sketch-toolbox' do
  version :latest
  sha256 :no_check

  url 'http://sketchtoolbox.com/Sketch%20Toolbox.zip'
  name 'Sketch Toolbox'
  homepage 'http://sketchtoolbox.com'
  license :mit

  app 'Sketch Toolbox.app'
end
