cask 'isolator' do
  version '4.9beta'
  sha256 '0f77f1165223196af77df9565f0573bce4d42ac6c327c73bb01c6eaa74081d6c'

  url "http://willmore.eu/software/download/Isolator-#{version}.dmg"
  appcast 'http://willmore.eu/software/isolator/releases.xml',
          checkpoint: 'e6c1876267632694796c24767ac822879dfb28a06eaa87d99bbc794363a600e2'
  name 'Isolator'
  homepage 'http://willmore.eu/software/isolator/'
  license :gratis

  app 'Isolator.app'
end
