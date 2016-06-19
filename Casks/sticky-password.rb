cask 'sticky-password' do
  version :latest
  sha256 :no_check

  url 'http://download.stickypassword.com/files/Mac/StickyPassword_rev489.dmg'
  name 'Sticky Password'
  homepage 'https://www.stickypassword.com/'
  license :freemium

  app 'Sticky Password.app'
end
