cask "espresso" do
  version "5.9"
  sha256 "4f9fe96665c02bb60b3694a3488658e9add77f34b03fe21257963b714db9761c"

  url "https://downloads.espressoapps.au/Espresso/Espresso_#{version}.zip",
      verified: "downloads.espressoapps.au/"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://espressoapp.com/"

  livecheck do
    url "https://espressoapp.com/updates/"
    regex(/data-title="(\d+(?:\.\d+)+)"/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Espresso.app"

  zap trash: [
    "~/Library/Application Support/Espresso",
    "~/Library/Caches/com.kanagacode.espresso",
    "~/Library/Preferences/com.kanagacode.espresso.plist",
    "~/Library/WebKit/com.kanagacode.espresso",
  ]
end
