cask 'grandtotal' do
  version '4.3.9'
  sha256 '22fe631a00710abe17a8652abd8a3e1861da3a11b88f63edd8ec5402f55ded86'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: 'c60cacd532882db35d8ce8638a3aabb1a85fe9bc5048add3fc7fe2825f47e74e'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
