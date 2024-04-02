cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.32.0"
  sha256 arm:   "9bcc4b7a3d794165e53a95b1c65c9d9dcd1d751e2ee5992b56b8347adfb26b52",
         intel: "3519edb3e7bb3711e271bac9d809f4ef3a73ebed58eff84edb47fba401fe48ea"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  depends_on macos: ">= :el_capitan"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
