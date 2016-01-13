cask 'isolator' do
  version '4.9beta'
  sha256 '0f77f1165223196af77df9565f0573bce4d42ac6c327c73bb01c6eaa74081d6c'

  url "http://willmore.eu/software/download/Isolator-#{version}.dmg"
  appcast 'http://willmore.eu/software/isolator/releases.xml',
          :sha256 => '3c61b7a16f8c4077948e14fd595713b77e3e6df0e883b2ac124b0d51f2b2640a'
  name 'Isolator'
  homepage 'http://willmore.eu/software/isolator/'
  license :gratis

  app 'Isolator.app'
end
