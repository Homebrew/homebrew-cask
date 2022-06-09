cask "listen1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.23.0"

  url "https://github.com/listen1/listen1_desktop/releases/download/v#{version}/Listen1_#{version}_mac_#{arch}.dmg",
      verified: "github.com/listen1/listen1_desktop/"
  if Hardware::CPU.intel?
    sha256 "9574e20c3e7332be7496ff63c3919a659f5626212648841e8943786143245c61"
  else
    sha256 "f678d40a4635a826978fd940bc6e3b1e7bca55791fa50a13a7d55998ebe70ff0"
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
