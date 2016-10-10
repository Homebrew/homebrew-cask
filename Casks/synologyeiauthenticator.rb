cask 'synologyeiauthenticator' do
  version '1.1-015'
  sha256 'd2189b8a387239b477fc1516a82ea4bd1c08e43bfa07c70627f47a0253e8bdc8'

  url "https://global.download.synology.com/download/Tools/EvidenceIntegrityAuthenticator/#{version}/Mac/SynologyEIAuthenticator-#{version}.dmg"
  name 'Synology Evidence Integrity Authenticator'
  homepage 'https://www.synology.com'

  app 'SynologyEIAuthenticator.app'
end
