cask 'pd' do
  version '0.48-2'
  sha256 '7b000f68674bcbc333a7dfe0fac33d16d8c021f091cdff03eb1ef5d4181c056b'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
