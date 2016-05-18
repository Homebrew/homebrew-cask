cask 'cubicsdr' do
  version '0.1.27'
  sha256 '51e7629880e8f061f4089c73482df91d02649633c2f9ccca6256e9b64f7eca22'

  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}-alpha/CubicSDR-#{version}-Darwin.dmg"
  name 'CubicSDR'
  homepage 'http://cubicsdr.com/'
  license :gpl

  app 'CubicSDR.app'
end
