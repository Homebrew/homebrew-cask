cask 'airparrot' do
  version '2.3.2'
  sha256 'e15e2e868d7398c56ab0ad3e06c249e1e5b08da0979b78e8211dfb2f61a319dc'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '0ed53a274ffa088d2157d7e37544d2b097f2cd961190d327a3b39c915c42dfa2'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
