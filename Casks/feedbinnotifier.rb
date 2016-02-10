cask 'feedbinnotifier' do
  version '2.0.0'
  sha256 '82234ee8992e5180cfc3dac8624eb8e75047c80bb4e7e2360c71b226a211c40c'

  # github.com/kmikael/FeedbinNotifier was verified as official when first introduced to the cask
  url "https://github.com/kmikael/FeedbinNotifier/releases/download/v#{version}/FeedbinNotifier.zip"
  appcast 'https://github.com/kmikael/FeedbinNotifier/releases.atom',
          checkpoint: '1dc76597191bab28d4832ea7845cd6c274743d19f531336fec55a2e7c1ea35b6'
  name 'Feedbin Notifier'
  homepage 'https://kmikael.github.io/FeedbinNotifier'
  license :mit

  app 'FeedbinNotifier.app'
end
