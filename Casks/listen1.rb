cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.24.0"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  if Hardware::CPU.intel?
    sha256 "2327464903b24cdd620d1ecbad8e039cd1f6f200f4286b05d6d799e7cc125a29"
  else
    sha256 "8fd3e5c832dbdd02cbb9c68edcc902dd6749e67ea62d4d98ff155890c2aee954"
  end

  name "Listen 1"
  desc "Search and play songs from a variety of online sources"
  homepage "https://listen1.github.io/listen1/"

  app "Listen1.app"

  zap trash: [
    "~/Library/Application Support/listen1",
    "~/Library/Preferences/com.listen1.listen1.plist",
  ]
end
