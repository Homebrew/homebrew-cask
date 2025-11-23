cask "espresso" do
  version "25.10"
  sha256 "f9002003d0ae046a42caeaf30681c977eb797d1917cd357517ed456d9312dcb0"

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
