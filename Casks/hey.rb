cask "hey" do
  arch arm: "-arm64"

  version "1.2.10"
  sha256 arm:   "a8fa6d709ba106d1e90829e1132e659c46d31850299dca805993cef1486f29a8",
         intel: "0b792e8a24f1cb7a77b02be4520c0cf5acb63ce8d32e773d4b75ab63c1999343"

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
