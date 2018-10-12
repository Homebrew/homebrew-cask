cask 'pd' do
  version '0.49-0'
  sha256 'f16401e8e761157841c358951ea8f888913c9700845c8c1228ebd869f95f43af'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
