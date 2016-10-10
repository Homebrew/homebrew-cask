cask 'drop-to-gif' do
  version '1.28'
  sha256 'e4814912d1054f9d1c56357d10480ffb59996e59a54b969b45b2d01835fdc707'

  # github.com/mortenjust/droptogif was verified as official when first introduced to the cask
  url "https://github.com/mortenjust/droptogif/releases/download/#{version}/Drop.to.GIF#{version.no_dots}.zip"
  appcast 'https://github.com/mortenjust/droptogif/releases.atom',
          checkpoint: '6ac820bac52e7780d1aa24a31dd17e34c7c1253ae1c23f16dc77a91cfc77bab6'
  name 'Drop to GIF'
  homepage 'https://mortenjust.github.io/droptogif'

  app 'Drop to GIF.app'
end
