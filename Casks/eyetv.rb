cask 'eyetv' do
  version '3.6.8_7407'
  sha256 '7dea4cdd5f9feb643a45f60ccb93dcf5983dd13946b95621a86dd5b06b87e1d7'

  url "http://files.elgato.com/eyetvdownloads/support/eyetv_#{version.no_dots}.dmg"
  name 'EyeTV'
  homepage 'https://www.elgato.com/en/eyetv/eyetv-3'

  app 'EyeTV.app'
end
