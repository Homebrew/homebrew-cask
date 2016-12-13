cask 'lacona' do
  version '1.1.2'
  sha256 '07c410761091faad533073c10fbad7ad6802e0ce8aef6d1f1fa61f5b392fa2c9'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "https://download.lacona.io/packages/#{version}/Lacona.zip"
  name 'Lacona'
  homepage 'https://www.lacona.io/'

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
