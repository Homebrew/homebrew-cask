cask 'bloodhound' do
  version '3.0.4'
  sha256 'a0411b1b8ea64d342813eefa92371a40ea46ae27bcfca61b72a66950322ecd3f'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
