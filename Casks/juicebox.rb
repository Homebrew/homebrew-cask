cask 'juicebox' do
  version '1.5.2'
  sha256 '94e577f362033829c1e9dc4016ad9681b949d75141a13689869f77c3dee4808c'

  # s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/hicfiles.tc4ga.com/public/juicebox/Juicebox.dmg'
  name 'Juicebox'
  homepage 'https://github.com/theaidenlab/juicebox/wiki'

  app 'Juicebox.app'
end
