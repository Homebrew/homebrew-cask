cask 'prusa-slic3r' do
  version '1.37.2,201710211402'
  sha256 'ef68fe1e5665dd08fd624c5415859a86ae0986ebdc67e1d037d40cafc58fa574'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3r-#{version.before_comma}-prusa3d-full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom',
          checkpoint: '75f9ef2abcf48d0425ed06dd1f99acd0a265fc47b75de9fe945173e74e76c6af'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
