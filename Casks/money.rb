cask 'money' do
  version '4.6'
  sha256 'd012fd407a083f01cae851bdc43caf311e85b6cedaf0c05b44a0539711a4a47c'

  url "http://download.jumsoft.com/Applications/Money/Money_#{version}.zip"
  name 'Money'
  homepage 'https://www.jumsoft.com/money/'
  license :commercial

  app 'Money.app'
end
