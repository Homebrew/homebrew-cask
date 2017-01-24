cask 'bloodhound' do
  version '1.2'
  sha256 '3873ae845a8ffefa3578142e2e264b6e8f510ca59be94c768b7d519d4b978828'

  url "https://github.com/adaptivethreat/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/adaptivethreat/BloodHound/releases.atom',
          checkpoint: '4c88fc90e6cf817a74f951f3a60fabd94ac19602348086b0bf72a070b1894eae'
  name 'bloodhound'
  homepage 'https://github.com/adaptivethreat/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
