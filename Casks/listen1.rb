cask 'listen1' do
  # note: "1" is not a version number, but an intrinsic part of the product name
  version '1.5.2'
  sha256 '69b1c07a91a0a2e3ff90ecebe54faf021978248cfe016fd821d02fd1ca437f89'

  # github.com/listen1/listen1_desktop was verified as official when first introduced to the cask
  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac.dmg"
  appcast 'https://github.com/listen1/listen1_desktop/releases.atom',
          checkpoint: '75c58a7854e9bbd5a371a34b8793a5c7ead5ee83cc5efdebad3e8006074b723a'
  name 'Listen 1'
  homepage 'https://listen1.github.io/listen1/'

  app 'Listen1.app'
end
