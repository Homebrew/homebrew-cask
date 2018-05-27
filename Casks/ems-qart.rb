cask 'ems-qart' do
  version '0.9.4'
  sha256 '4eaaa863fcfa16a2f29f8360f0557d41cc962a1dd615b36519b0eb0b0531a13f'

  url "https://github.com/rbino/ems-qart/releases/download/v#{version}/ems-qart_v#{version}.dmg"
  appcast 'https://github.com/rbino/ems-qart/releases.atom',
          checkpoint: '9145cf30753d43ba09b14955d06e535781b7a5bd1435492ef9b5bfc37583bc80'
  name 'ems-qart'
  homepage 'https://github.com/rbino/ems-qart'

  app 'ems-qart.app'
end
