cask 'nucleo' do
  version '1.0.6'
  sha256 '12488166734d96bdc43faf6bfac156def05ad5701ee827dfd49245ba57c04b23'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/co.ambercreative.Nucleoapp/Nucleo.zip'
  appcast 'https://updates.devmate.com/co.ambercreative.Nucleoapp.xml',
          checkpoint: '77915ed41d2083508e6fe6ea299afc5af542bef273b9fe521830e69c65d2db0f'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
