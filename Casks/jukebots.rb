cask 'jukebots' do
  version '1.0.3'
  sha256 'e791fa90b1074cd9af2ba66f7d3adf91ae2bf8dcf9736b7553ffe7b5ef5ec7f6'

  url "https://github.com/hirohisa/Jukeboks/releases/download/#{version}/Jukeboks.zip"
  appcast 'https://github.com/hirohisa/Jukeboks/releases.atom',
          checkpoint: '1e8e5edb8d0a3937a1674a977ca5301e0419bfaeb94c34a9f811fb41c1274e2e'
  name 'Jukeboks'
  homepage 'https://github.com/hirohisa/Jukeboks'

  app 'Jukeboks.app'
end
