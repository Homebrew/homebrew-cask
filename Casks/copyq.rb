cask 'copyq' do
  version '3.0.1'
  sha256 '82bbba7a0a9166a6b56b53e7fcf3f9ce3f4353acc8a8ab4bb046c1284e08d74c'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: 'a7c386b6d52ec0103a28614a057d03b09297cbcf2ee4363de6d0912c15a548fd'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end
