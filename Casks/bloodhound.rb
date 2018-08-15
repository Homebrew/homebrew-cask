cask 'bloodhound' do
  version '2.0.1'
  sha256 '6bf16a634af95469401406492913ac1b8e1cc2b9e0e2008be1cf71e81a1e87be'

  url "https://github.com/BloodHoundAD/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/BloodHoundAD/BloodHound/releases.atom'
  name 'bloodhound'
  homepage 'https://github.com/BloodHoundAD/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
