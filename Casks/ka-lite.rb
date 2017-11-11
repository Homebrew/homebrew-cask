cask 'ka-lite' do
  version '0.17.3'
  sha256 '911746e4dcd86feac0ed3c7b88fb8bd9e96d5bac77544282e7d344d8b9e1fc4b'

  url "http://pantry.learningequality.org/downloads/ka-lite/#{version.major_minor}/installers/mac/KA-Lite-#{version}.dmg"
  appcast 'https://github.com/learningequality/ka-lite/releases.atom',
          checkpoint: 'a701693e2b43a34bde3b2ad4940af6b94e262491a414b86b57c4c81ffeeafa05'
  name 'Khan Academy Lite'
  homepage 'https://learningequality.org/ka-lite/'

  pkg 'KA-Lite.pkg'

  uninstall pkgutil: 'org.learningequality.kalite',
            signal:  ['TERM', 'org.learningequality.kalite'],
            script:  {
                       executable: '/Applications/KA-Lite/KA-Lite_Uninstall.tool',
                       args:       ['Yes', 'Yes'],
                       sudo:       true,
                     }
end
