cask 'bloodhound' do
  version '3.0.0'
  sha256 'c5733dd416b4bfaed6f24b3a8755fd49f441c5675749a087e018ec7de628be90'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
