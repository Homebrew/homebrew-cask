cask :v1 => 'jettison' do
  version '1.4.3'
  sha256 '5836546099a85e212bd1cfbc79b35e5cf4d99e7056edff4a2b4fbdfdf3bdbd6a'

  url "https://www.stclairsoft.com/download/Jettison-#{version}.dmg"
  name 'Jettison'
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?JT',
          :sha256 => '0373bcc3c6c29abf5878f4db77bcf310241676ee0e4957940e041d158aad8442'
  homepage 'https://www.stclairsoft.com/Jettison/'
  license :freemium

  app 'Jettison.app'
end
