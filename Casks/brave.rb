cask 'brave' do
  version '0.7.12dev'
  sha256 'd021bafa91e7f22e6465a69ca248d69a61e5b5565a0e44d56038ab7ea8326742'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '00ecd696c5bd898b8f8db7e829b0a37c5b97778382f5aebd1d0cad16aa789a8b'
  name 'Brave'
  homepage 'http://brave.com'
  license :mpl

  app 'Brave.app'
end
