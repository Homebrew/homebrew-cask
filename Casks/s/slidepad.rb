cask "slidepad" do
  version "1.5.7"
  sha256 "01c803234d436b87ff64e2234df54d43f7bc191eca111195b11eb97907f134e4"

  url "https://f002.backblazeb2.com/file/Slidepad/Slidepad_#{version.dots_to_underscores}.zip",
      verified: "f002.backblazeb2.com/file/Slidepad/"
  name "Slidepad"
  desc "Slide over browser"
  homepage "https://slidepad.app/"

  livecheck do
    url "https://slidepad.app/release/0.0.1.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Slidepad.app"

  zap trash: [
    "~/Library/Application Support/com.slidepad.slidepad",
    "~/Library/Application Support/Slidepad",
    "~/Library/Caches/com.slidepad.slidepad",
    "~/Library/Caches/com.slidepad.slidepad.ShipIt",
    "~/Library/HTTPStorages/com.slidepad.slidepad",
    "~/Library/Preferences/com.slidepad.slidepad.plist",
    "~/Library/WebKit/com.slidepad.slidepad",
  ]
end
