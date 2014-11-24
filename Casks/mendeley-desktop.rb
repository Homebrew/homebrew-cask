cask :v1 => 'mendeley-desktop' do
  version '1.12.3'
  sha256 '8803967a356b15c40e01aa7e869c849bf41f4f8d323d870ad1526b31a5142559'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  homepage 'http://www.mendeley.com/'
  license :unknown

  app 'Mendeley Desktop.app'
end
