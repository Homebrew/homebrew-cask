cask 'ejector' do
  version '0.8.1'
  sha256 'c6fefa1788a1a67793456e9620e18b9613c19634b649ebf6578e9c082ff4946e'

  url "http://www.jeb.com.fr/soft/Ejector-v#{version}.dmg"
  appcast 'http://www.jeb.com.fr/en/ejector.shtml',
          checkpoint: 'c32382156a0538c017a21bbfbb08097cd7bf009e935b7c920113b1b989d0bccf'
  name 'Ejector'
  homepage 'http://www.jeb.com.fr/en/ejector.shtml'

  app 'Ejector.app'
end
