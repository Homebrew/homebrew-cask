cask :v1 => 'isolator' do
  version '4.9beta'
  sha256 '0f77f1165223196af77df9565f0573bce4d42ac6c327c73bb01c6eaa74081d6c'

  url "http://willmore.eu/software/download/Isolator-#{version}.dmg"
  appcast 'http://willmore.eu/software/isolator/releases.xml',
          :sha256 => '7bcafa48189e21cb571c04ce70e5f235baf354c3a7c6b891b9ace3507acbc0f8'
  homepage 'http://willmore.eu/software/isolator'
  license :unknown    # todo: improve this machine-generated value

  app 'Isolator.app'
end
