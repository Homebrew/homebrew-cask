cask "aya" do
  arch arm: "arm64", intel: "x64"

  version "1.14.2"
  sha256 arm:   "44343bea5e4bcbba09deae815698765a7831bfcde358bf6a32a5f5162619577d",
         intel: "45411d655f18eb06b60e7d29f102fbcc3ac56fc2028caf3e86fb47ec8fd9f9c2"

  url "https://github.com/liriliri/aya/releases/download/v#{version}/AYA-#{version}-mac-#{arch}.dmg",
      verified: "github.com/liriliri/aya/"
  name "AYA"
  desc "Android ADB desktop app"
  homepage "https://aya.liriliri.io/"

  app "AYA.app"

  zap trash: [
    "~/Library/Application Support/AYA",
    "~/Library/Preferences/io.liriliri.aya.plist",
  ]
end
