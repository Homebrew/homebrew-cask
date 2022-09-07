cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.26.0"
  sha256 arm:   "d036af3aca9a29ab65a17b2daaebbf0f8690c3b683076babd91132d08bb562ef",
         intel: "3a11ad65e60104a7f57d3e1696adb927d7e0b519286aeccc47420f0a8970354f"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
