cask "hey" do
  arch arm: "-arm64"

  version "1.2.14"
  sha256 arm:   "ffe8da4959aa02c654704b150078b5dfbdfd0bc04778aa813c3c5fd072298d6e",
         intel: "ec7be5edda258f044c6bd6d1862fb6e0dd317e3ee18d5bc3d0b3c649a3d8607d"

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
