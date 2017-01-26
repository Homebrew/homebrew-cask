cask 'ndm' do
  version '0.1.4'
  sha256 'd8b33b688128650521f5d80718cbab87499f15b82536b208c3ee9f7c60352612'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/v#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '234338ed5321bab24e1b6c5b4c982e2b4d003cf1c8a6292248dbf2146e3a0af1'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
