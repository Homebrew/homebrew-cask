cask "hey" do
  arch arm: "-arm64"

  version "1.2.12"
  sha256 arm:   "2602ce36f5e23b25795d0a5e352039d1b3e4490c8e37f82c682e80aa15c0727a",
         intel: "4ba9e4b883f985d226978d6dc54aa5c2651609a0ebebabca6004a578796aa6e6"

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
