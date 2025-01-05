cask "hey" do
  arch arm: "-arm64"

  version "1.2.15"
  sha256 arm:   "0724b10ebdd0d16b61f20876a4e524cc0d34a4bc257da92a75b685c0f75e5ef2",
         intel: "5bbf4cc4503bb42f1b6c1290c6e300385f8033cc978fa53d06436a852a3e8e37"

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
  depends_on macos: ">= :catalina"

  app "HEY.app"

  zap trash: [
    "~/Library/Application Support/HEY",
    "~/Library/Preferences/com.hey.app.desktop.plist",
  ]
end
