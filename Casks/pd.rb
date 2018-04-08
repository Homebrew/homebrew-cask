cask 'pd' do
  version '0.48-1'
  sha256 'b7064bb20266da39e8257a94d09d75849f35d4f43520ce2c704a20562176e804'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html',
          checkpoint: 'e30ab3ff7597ee66a9c59014e05a0f254ec1c0575fd5afc7be8484dd754dac51'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
