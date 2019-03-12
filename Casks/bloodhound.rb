cask 'bloodhound' do
  version '2.0.5'
  sha256 'a19a1c24514a2b09c592a42fd5e813cdea511507f809a57e31067ab6f1296bf3'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
