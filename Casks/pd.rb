cask 'pd' do
  version '0.49-1'
  sha256 '6628074df8951480d8b728cd18e1bda1470d1b7a3572bd7816a28a85e12d85c2'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
