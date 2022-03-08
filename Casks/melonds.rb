cask "melonds" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.9.4"

  url "https://github.com/Arisotura/melonDS/releases/download/#{version}/melonDS_#{version}_mac_#{arch}.dmg",
      verified: "github.com/Arisotura/melonDS/"
  if Hardware::CPU.intel?
    sha256 "916c2851a44a6ac016ccd31219c6b8d3f24a4a3aa8bd3ee0577b8db7fc1e45d4"
  else
    sha256 "2613c7f41fe9f9268a7496fb5c88c54962ee181f0027010d2aab1222fc96254a"
  end

  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
