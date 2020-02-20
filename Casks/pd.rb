cask 'pd' do
  version '0.50-2'
  sha256 '73832c69b2dc7dce8d2d5278f6b0e9626169888964a1a75333b1ffd0ec2b034b'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
