cask 'itch' do
  version '22.2.0'
  sha256 '3c93a7b1c5d880c819e75c0bf31277261ea71b5585817a0966976867de8fecee'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: 'eca59b0f515cf26edd52c85607aa6469efff497affd10816103123a63259572e'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
