cask "hey" do
  arch arm: "-arm64"

  version "1.2.13"
  sha256 arm:   "7cbad39de3d591f67cdf754b00fdb3adb971482e3d4081c0d197cc71282902ea",
         intel: "04e66b402baea4bc7e4c0e826030f915f9d8e28b2f9996f315f87ab27b7ae1c2"

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
