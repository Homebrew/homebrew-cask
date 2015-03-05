cask :v1 => 'synologyeiauthenticator' do
  version '1.1-013'
  sha256 'cc38db617f309ca5c7d8ea67cafb63d5509a07e43186d87ab19461366ea30691'

  url "http://global.download.synology.com/download/Tools/EvidenceIntegrityAuthenticator/013/Mac/SynologyEIAuthenticator-#{version}.dmg"
  homepage 'https://www.synology.com'
  license :closed

  app 'SynologyEIAuthenticator.app'
end
