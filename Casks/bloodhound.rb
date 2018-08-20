cask 'bloodhound' do
  version '2.0.3'
  sha256 'eb5ab27ff0e11759e0291280e3254cebc52aacbc576098f317da178845c0bf6f'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
