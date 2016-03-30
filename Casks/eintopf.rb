cask 'eintopf' do
  version '1.2.2'
  sha256 'd1694af80ac179d41e1207535ddfbac4f00b0061cf10e73fc7c42200167842bf'

  # github.com/mazehall/eintopf was verified as official when first introduced to the cask
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  appcast 'https://github.com/mazehall/eintopf/releases.atom',
          checkpoint: 'f192ca524eb66316b73fb79ee049b41d075192db5c31d2cc0f9777c2b3f330e5'
  name 'Eintopf'
  homepage 'https://eintopf.io'
  license :mit

  app 'Eintopf.app'
end
