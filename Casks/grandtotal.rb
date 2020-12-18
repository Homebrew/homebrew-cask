cask "grandtotal" do
  version "6.2.2"
  sha256 "3c0eb1f362c3ce93acdceea00570037e53acbcb52b41a27920d868fe9f9bd42a"

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php"
  name "GrandTotal"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  app "GrandTotal.app"
end
