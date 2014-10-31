class Fontprep < Cask
  version 'v3.1.1'
  sha256 :no_check

  url 'https://github.com/briangonzalez/fontprep/releases/download/v3.1.1/FontPrep_3.1.1.zip'
  homepage 'http://fontprep.com'
  license :gpl

  app 'FontPrep.app'
end
