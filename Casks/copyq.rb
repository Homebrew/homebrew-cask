cask 'copyq' do
  version '2.6.1'
  sha256 'd1c9a37f12753dc44aede76e4724fea75b7f6860795f710e5c72c817a18301c9'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ-#{version}.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '63eb4fac1647763b65c3c6d24a953377ccd1e0f5eef6488c0f31747e1cb18c5c'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'
  license :gpl

  app 'CopyQ.app'
end
