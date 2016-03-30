cask 'baudline' do
  version '1.08'
  sha256 'f47201069812333c36715beaacb17de93bc8fa5f7e68952fe51296f04df69f83'

  url "http://www.baudline.com/baudline_#{version}_macosx_universal.dmg"
  name 'baudline'
  homepage 'http://www.baudline.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'baudline.app'
end
