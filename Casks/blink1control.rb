cask 'blink1control' do
  version '1.98'
  sha256 '49c680f3ec174662cc00a4f4649074a891e8fc55b82aec284c5aade0efb44ce1'

  # github.com/todbot/blink1 was verified as official when first introduced to the cask
  url "https://github.com/todbot/blink1/releases/download/v#{version}/Blink1Control-mac.zip"
  appcast 'https://github.com/todbot/blink1/releases.atom',
          checkpoint: 'a2c1b1807df8f633e5e9aaa9b29242929fdb4dec7e84cc011a15ec03ef305cf1'
  name 'Blink1Control'
  homepage 'https://blink1.thingm.com/'

  app 'Blink1Control.app'
end
