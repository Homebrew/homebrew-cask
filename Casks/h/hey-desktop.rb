cask "hey-desktop" do
  arch arm: "-arm64"

  version "1.2.17"
  sha256 arm:   "f901b52916f5c9a33d12a4e9f73ceacc85f652e76b7cb61767507186d270859e",
         intel: "e7b260f4faa8fe0c3783c2b31a6e4410103b273c0302dd275b0da26b0f06d59d"

  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}#{arch}-mac.zip",
      verified: "hey-desktop.s3.amazonaws.com/"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  livecheck do
    url "https://hey-desktop.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :catalina"

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
