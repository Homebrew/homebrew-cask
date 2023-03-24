cask "hey" do
  arch arm: "-arm64"

  version "1.2.11"
  sha256 arm:   "c924c307042328c59692214b3b3c321cff5c0c4f462225d1c83459098a268ddd",
         intel: "0cbf19dc198948168af49909a2fd5cb9d6c81110b9107121efa6ffb80828ecf6"

  url "https://hey-desktop.s3.amazonaws.com/HEY-#{version}#{arch}-mac.zip",
      verified: "hey-desktop.s3.amazonaws.com/"
  name "HEY"
  desc "Access the HEY email service"
  homepage "https://hey.com/"

  livecheck do
    url "https://hey-desktop.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
