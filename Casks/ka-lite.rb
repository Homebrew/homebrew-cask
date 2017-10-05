cask 'ka-lite' do
  version '0.17.3'
  sha256 '911746e4dcd86feac0ed3c7b88fb8bd9e96d5bac77544282e7d344d8b9e1fc4b'

  url "http://pantry.learningequality.org/downloads/ka-lite/0.17/installers/mac/KA-Lite-#{version}.dmg"
  name 'Khan Academy Lite'
  homepage 'https://learningequality.org/ka-lite/'

  pkg 'KA-Lite.pkg'

  uninstall script:  {
                        executable: '/Applications/KA-Lite/support/scripts/ka-lite-remover.sh',
                        sudo:       false,
                        input:      ['Yes', 'Yes'],
                     }
end
