cask "espresso" do
  version "5.8"
  sha256 "f502323db472164d98c098ad300ad47d35d350fcbcaed7e4d3342722642cef04"

  url "https://downloads.kangacode.com/Espresso/Espresso_#{version}.zip",
      verified: "downloads.kangacode.com/"
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
