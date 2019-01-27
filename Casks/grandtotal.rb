cask 'grandtotal' do
  version '5.2.5'
  sha256 '1b918854430f0f9482a1b082e7830bd763e4f3b8564a537ae330cbe6e93b4ca9'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name 'GrandTotal'
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  depends_on macos: '>= :mavericks'

  app 'GrandTotal.app'
end
