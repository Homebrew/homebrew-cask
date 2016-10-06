cask 'statusfy' do
  version '1.4.0'
  sha256 '7fcd2bf27000bec59ef76343621fc4c551c68dd5ab338742ca824b2c5fe0771b'

  url 'https://github.com/paulyoung/Statusfy/releases/download/1.4.0/Statusfy.zip'
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: '7c389e357ae08cb0f7d9e20108fe239da609514d09c1fbcb94192998f570b6c5'
  name 'Shuttle'
  homepage 'https://github.com/paulyoung/Statusfy'
  license :mit

  app 'Statusfy.app'
end
