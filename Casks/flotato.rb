cask "flotato" do
  version "36,1"
  sha256 :no_check

  url "https://vendors.paddle.com/download/product/558359",
      verified: "vendors.paddle.com/download/product/558359"
  name "Flotato"
  desc "Tool to turn any web page into a desktop app"
  homepage "https://flotato.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Flotato.app"

  zap trash: [
    "/Applications/Flotato Help.app",
    "~/Library/Application Support/Flotato",
    "~/Library/WebKit/com.mortenjust.flotato",
  ]
end
