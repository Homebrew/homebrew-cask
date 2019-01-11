cask 'grandtotal' do
  version '5.2.4'
  sha256 '56639b0b0e12e902d3393e2d67c706bf9d0982e29d88dc3fd7db1c3e78d6f0e3'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
