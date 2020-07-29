cask 'pd' do
  version '0.51-0'
  sha256 '711ded81f50794d577ada187ef3a2523314a9fa7bb6ab6507f4b16cac3d17729'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
