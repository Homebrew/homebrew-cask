cask :v1_1 => 'pd' do
  version '0.46-6'
  sha256 'fad5a77f01f25fb6b8c73e67d5d7ab3cc3ca87b5eb46d2fbe0be0e30d3f64823'

  url "http://msp.ucsd.edu/Software/pd-#{version}-64bit.mac.tar.gz"
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'
  license :bsd

  app "Pd-#{version}-64bit.app"

  postflight do
    set_permissions "#{staged_path}/Pd-#{version}-64bit.app", 'u+w'
  end
end
