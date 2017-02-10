cask 'nteract' do
  version '0.1.0'
  sha256 '6b94849ed2c6cf69920e0ee06972ae58a533ab02baa8fdedcfe84cd6995812e1'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '1eb55b2406a8161e57e506cf6669da881c0b99254c865acd77c024429549eb3e'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
