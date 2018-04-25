cask 'prusa-slic3r' do
  version '1.39.1,201803010854'
  sha256 '745a156f366c06e0863383d2e661e970443905a10370bbbcb44ad9167332f1b0'

  # github.com/prusa3d/Slic3r was verified as official when first introduced to the cask.
  url "https://github.com/prusa3d/Slic3r/releases/download/version_#{version.before_comma}/Slic3r-#{version.before_comma}-prusa3d-full-#{version.after_comma}.dmg"
  appcast 'https://github.com/prusa3d/Slic3r/releases.atom',
          checkpoint: '7043d27fe21072d2e88e3580f51e068c60ddc649d878e30ef4406c651ee83d37'
  name 'Slic3r - Prusa Edition'
  homepage 'https://www.prusa3d.com/slic3r-prusa-edition/'

  conflicts_with cask: 'slic3r'

  app 'Slic3r.app'
end
