cask :v1 => 'graffitipot' do
  version :latest
  sha256 :no_check

  url 'http://crystaly.com/graffitipot/GraffitiPot_1.1.zip'
  name 'GraffitiPot'
  homepage 'http://crystaly.com/graffitipot/'
  license :freemium

  app 'GraffitiPot.app'
end
