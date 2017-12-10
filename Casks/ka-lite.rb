cask 'ka-lite' do
  version '0.17.3'
  sha256 '911746e4dcd86feac0ed3c7b88fb8bd9e96d5bac77544282e7d344d8b9e1fc4b'

  url "http://pantry.learningequality.org/downloads/ka-lite/#{version.major_minor}/installers/mac/KA-Lite-#{version}.dmg"
  appcast 'https://github.com/learningequality/ka-lite/releases.atom',
          checkpoint: '3e57c69d45e5226579259c9924a8668ee3619f628b18cad44fd1261a2924ce8e'
  name 'Khan Academy Lite'
  homepage 'https://learningequality.org/ka-lite/'

  depends_on formula: 'python'

  pkg 'KA-Lite.pkg'

  uninstall pkgutil: 'org.learningequality.kalite',
            signal:  ['TERM', 'org.learningequality.kalite'],
            script:  {
                       executable: '/Applications/KA-Lite/KA-Lite_Uninstall.tool',
                       args:       ['Yes', 'No'],
                       sudo:       true,
                     }

  zap trash: '~/.kalite'
end
