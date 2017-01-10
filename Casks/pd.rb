cask 'pd' do
  version '0.47-1'
  sha256 'cfa6b4a70859733f41b8d2d9f9610836bfd448d64e15199464efdb8b2757cde0'

  url "http://msp.ucsd.edu/Software/pd-#{version}-64bit.mac.tar.gz"
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}-64bit.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}-64bit.app", 'u+w'
  end
end
