cask :v1 => 'sketch-toolbox' do
  version :latest
  sha256 :no_check

  url 'http://sketchtoolbox.com/Sketch%20Toolbox.zip'
  name 'Sketch Toolbox'
  appcast 'http://sketchtoolbox.com/updates/appcast.xml',
          :sha256 => 'db5407ef7547d317f7d3667c36ddf788b89814eec4fea9d88d4de33260355e9e'
  homepage 'http://sketchtoolbox.com'
  license :mit

  app 'Sketch Toolbox.app'
end
