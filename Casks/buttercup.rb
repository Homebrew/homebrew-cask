cask 'buttercup' do
  version '0.22.2'
  sha256 '55e114184fdfc3a488c0466edc09e1106bf68788f83232f4fb121c7769004e8d'

  # github.com/buttercup/buttercup-desktop was verified as official when first introduced to the cask
  url "https://github.com/buttercup/buttercup-desktop/releases/download/v#{version}/buttercup-desktop-#{version}-mac.zip"
  appcast 'https://github.com/buttercup/buttercup-desktop/releases.atom',
          checkpoint: 'b97ad5f00cd503bc2ca70321d45c307d4a78d1e1535b1179a5d67071296005bd'
  name 'Buttercup'
  homepage 'https://buttercup.pw/'

  app 'Buttercup.app'
end
