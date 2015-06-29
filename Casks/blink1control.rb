cask :v1 => 'blink1control' do
  version '1.94'
  sha256 '0c6443258658dc7dc0ad7bb4c72c4d47665b2cc080c1d620532ad72ee5d6210e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/todbot/blink1/releases/download/v#{version}/Blink1Control-mac.zip"
  appcast 'https://github.com/todbot/blink1/releases.atom'
  name 'Blink1Control'
  homepage 'https://blink1.thingm.com/'
  license :cc

  app 'Blink1Control.app'
end
