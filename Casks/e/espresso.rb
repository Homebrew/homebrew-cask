cask "espresso" do
  version "25.12"
  sha256 "6a04895bb1e55d637e5e5e61934f017d2b10b32c96c57cecbca865cc4de8275b"

  url "https://get.espressoapp.com/Espresso_#{version}.zip"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://espressoapp.com/"

  livecheck do
    url "https://espressoapp.com/download/"
    regex(/data-title=["']?v?(\d+(?:\.\d+)+)["' >]/i)
  end

  depends_on macos: ">= :big_sur"

  app "Espresso.app"

  zap trash: [
    "~/Library/Application Support/Espresso",
    "~/Library/Caches/com.kanagacode.espresso",
    "~/Library/Preferences/com.kanagacode.espresso.plist",
    "~/Library/WebKit/com.kanagacode.espresso",
  ]
end
