class Isolator < Cask
  version '4.9beta'
  sha256 '0f77f1165223196af77df9565f0573bce4d42ac6c327c73bb01c6eaa74081d6c'

  url 'http://willmore.eu/software/download/Isolator-4.9beta.dmg'
  appcast 'http://willmore.eu/software/isolator/releases.xml'
  homepage 'http://willmore.eu/software/isolator'

  app 'Isolator.app'
end
