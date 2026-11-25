cask "espresso" do
  version "27"
  sha256 "1ef859f4d600a91919e007894d9f38e56b7ae6bc06be75b1c458f934734371a4"

  url "https://download.ixian.au/espresso/Espresso_#{version}.zip"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://ixian.au/espresso/"

  livecheck do
    url "https://ixian.au/espresso/download/"
    regex(/data-title=["']?v?(\d+(?:\.\d+)*)["' >]/i)
  end

  depends_on macos: :golden_gate

  app "Espresso.app"

  uninstall quit: "au.ixian.espresso"

  zap trash: [
    "~/Library/Application Support/Espresso",
    "~/Library/Caches/au.ixian.espresso",
    "~/Library/Caches/com.kanagacode.espresso",
    "~/Library/Preferences/au.ixian.espresso.plist",
    "~/Library/Preferences/com.kanagacode.espresso.plist",
    "~/Library/WebKit/com.kanagacode.espresso",
  ]
end
