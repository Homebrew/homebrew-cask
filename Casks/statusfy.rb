cask 'statusfy' do
  version '1.4.0'
  sha256 '7fcd2bf27000bec59ef76343621fc4c551c68dd5ab338742ca824b2c5fe0771b'

  url "https://github.com/paulyoung/Statusfy/releases/download/#{version}/Statusfy.zip"
  appcast 'https://github.com/paulyoung/Statusfy/releases.atom',
          checkpoint: '0c4e6266973191bc5cabe69bebae32d2698b007e1907af627694938899d87dac'
  name 'Statusfy'
  homepage 'https://github.com/paulyoung/Statusfy'

  app 'Statusfy.app'
end
