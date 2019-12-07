cask 'seashore' do
  version '2.4.14'
  sha256 'bde60bb7812233039b9967b42e95f05d73b2a5e8db88dcbe1038a3ce96075c5b'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
