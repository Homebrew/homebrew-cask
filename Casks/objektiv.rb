cask 'objektiv' do
  version :latest
  sha256 :no_check

  # nthloop.com is the official download host per the vendor homepage
  url 'http://nthloop.com/objektiv/objektiv-latest.zip'
  appcast 'http://nthloop.com/objektiv/appcast.xml',
          :sha256 => '584d7df99345003c038869e211dc7355fcb837c04d7a786a3b6eb0ec2f1b2d5c'
  name 'Objektiv'
  homepage 'https://nthloop.github.io/Objektiv/'
  license :mit

  app 'Objektiv.app'
end
