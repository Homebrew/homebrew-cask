cask 'prusaslicer' do
  version '2.1.1,201912101508'
  sha256 '0a27929b446349056633ae1b07114bb0641aeb53d4c61f146e4cf3c2ac922734'

  # github.com/prusa3d/PrusaSlicer was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.before_comma}/PrusaSlicer-#{version.before_comma}+-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/PrusaSlicer/releases.atom'
  name 'PrusaSlicer'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  app 'PrusaSlicer.app'

  zap trash: [
               '~/Library/Application Support/PrusaSlicer',
               '~/Library/Preferences/com.prusa3d.slic3r',
               '~/Library/Saved Application State/com.prusa3d.slic3r.savedState',
             ]
end
