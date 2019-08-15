cask 'openkey' do
  version '1.2.2'
  sha256 '3c78e592837c2a66d579ac221937df2655a1772029fbb6563b056bcd13bcfaf0'

  url "https://github.com/tuyenvm/OpenKey/releases/download/v#{version}/OpenKey1.2RC2.dmg"
  name 'OpenKey'
  homepage 'https://github.com/tuyenvm/OpenKey/'

  app 'OpenKey.app'
end
