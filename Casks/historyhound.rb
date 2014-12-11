cask :v1 => 'historyhound' do
  version '1.9.9'
  sha256 '3b0873d2425115680c347d5e4be607e9232781e1711aec58ef76e07a07847ad3'

  url "https://www.stclairsoft.com/download/HistoryHound-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?HH',
          :sha256 => '2cd20bfdf558b83ee35ef23c879d1b321350cbb999489eb4b5cf5fba9c00a7bd'
  homepage 'http://www.stclairsoft.com/HistoryHound/'
  license :unknown    # todo: improve this machine-generated value

  app 'HistoryHound.app'
end
