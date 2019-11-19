cask 'prusaslicer' do
  version '2.1.0,201909160907'
  sha256 '93c52e6acab60ab60f9c5da251806d8f09714d5cf364e1c97a19c31935e139c7'

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
