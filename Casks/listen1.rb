cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.21.7"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  if Hardware::CPU.intel?
    sha256 "cb34ffe4af595eaf205ed0e6c6c7738ba46bdda1e9280c17129e38bc41c6bcdb"
  else
    sha256 "84e6f5aeeec61404db32a0f6a4dc326f56b2f068e2dd033188868fb7ed2f6073"
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
