cask 'bloodhound' do
  version '1.1'
  sha256 '399ab1b17f68128cc5a2c143f3795ac74876fa48a117c284a09a7f5a196c6a8e'

  url "https://github.com/adaptivethreat/BloodHound/releases/download/#{version}/BloodHound-darwin-x64.zip"
  appcast 'https://github.com/adaptivethreat/BloodHound/releases.atom',
          checkpoint: '09212808c04cbcb7d651570160c1140bc05c7791889ac1b49eab147e1c787eb3'
  name 'bloodhound'
  homepage 'https://github.com/adaptivethreat/BloodHound'

  app 'BloodHound-darwin-x64/BloodHound.app'
end
