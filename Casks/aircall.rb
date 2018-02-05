cask 'aircall' do
  version '1.4.13'
  sha256 'a9f268aa82648913b6332ccfef75cb7a04d2726a90717cbcd8125b3ed91d298c'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0',
          checkpoint: 'd1400fd60fc8d36e1fe09c48b03e9127a9e0453c873977c0d6a8d11d124bddfe'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
