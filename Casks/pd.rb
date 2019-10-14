cask 'pd' do
  version '0.50-0'
  sha256 '14eb88990b97046946e803bb8c5aac7d7350c443572ba507a2ede8de9628d7c2'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
