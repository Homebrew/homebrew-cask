cask 'ka-lite' do
  version '0.17.4'
  sha256 '5c25cd1417bb3612d6c6efe15a2c0aab2550163d86fdab3661a75f9366e5a10d'

  url "http://pantry.learningequality.org/downloads/ka-lite/#{version.major_minor}/installers/mac/KA-Lite-#{version}.dmg"
  appcast 'https://github.com/learningequality/ka-lite/releases.atom',
          checkpoint: 'cbf2d8476b2d6495459b6797d46a1452c121cff9ac0f16dda3d75daed216a2f6'
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
