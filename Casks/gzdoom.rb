cask 'gzdoom' do
  version '2.3.1'
  sha256 '5a58e49e9622d1ac6324b53c76c363bbd7a166965f4c4c4c4b0b7e2bc3819c21'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: '672a5c9806126bfa8290ea4263f779b15678937074c735face96d5b1c6e49342'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
