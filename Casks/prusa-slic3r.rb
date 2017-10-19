cask 'prusa-slic3r' do
  version '1.37.1,201709141215'
  sha256 'a7cfc43ae8ea05eb77dd7b25b49309558688a7926d1ce157c6e0041118686729'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3r-#{version.before_comma}-prusa3d-full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom',
          checkpoint: '2dfc5c83b39db928a7df55f9b4dfb0d344e857e3621c8caee75fdb046612cd73'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
