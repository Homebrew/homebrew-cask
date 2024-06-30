cask "espresso" do
  version "5.9.1"
  sha256 "1bd6bc510ecb4aea724ced65716f7597c0fe2749ee1fd8f05fccad56336fa61e"

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

  caveats do
    requires_rosetta
  end
end
