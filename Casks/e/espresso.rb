cask "espresso" do
  version "25.9"
  sha256 "1bd6bc510ecb4aea724ced65716f7597c0fe2749ee1fd8f05fccad56336fa61e"

  url "https://get.espressoapp.com/Espresso_#{version}.zip"
  name "Espresso"
  desc "Website editor focusing on flair and efficiency"
  homepage "https://espressoapp.com/"

  livecheck do
    url "https://espressoapp.com/download/"
    regex(/data-title=["']?v?(\d+(?:\.\d+)+)["' >]/i)
  end

  app "Espresso.app"

  zap trash: [
    "~/Library/Application Support/Espresso",
    "~/Library/Caches/com.kanagacode.espresso",
    "~/Library/Preferences/com.kanagacode.espresso.plist",
    "~/Library/WebKit/com.kanagacode.espresso",
  ]

  caveats do
    requires_rosetta
  end
end
