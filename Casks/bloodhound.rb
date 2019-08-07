cask 'bloodhound' do
  version '2.2.0'
  sha256 'fffaec6a59c6d0b368fd980414500ffeb17f3155ec3353f679dfc6caf392ce84'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
