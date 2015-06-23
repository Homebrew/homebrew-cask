cask :v1 => 'feedbinnotifier' do
  version '2.0.0'
  sha256 '82234ee8992e5180cfc3dac8624eb8e75047c80bb4e7e2360c71b226a211c40c'

  url "https://github.com/kmikael/FeedbinNotifier/releases/download/v#{version}/FeedbinNotifier.zip"
  appcast 'https://github.com/kmikael/FeedbinNotifier/releases.atom'
  name 'Feedbin Notifier'
  homepage 'http://kmikael.github.io/FeedbinNotifier'
  license :mit

  app 'FeedbinNotifier.app'
end
