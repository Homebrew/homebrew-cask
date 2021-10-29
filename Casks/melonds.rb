cask "melonds" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.9.3"

  url "https://github.com/Arisotura/melonDS/releases/download/#{version}/melonDS_#{version}_mac_#{arch}.dmg",
      verified: "github.com/Arisotura/melonDS/"
  if Hardware::CPU.intel?
    sha256 "04127b3c4106ff1780e7e4082aa978e7030beeb9c231656faea0ef27f73e16c3"
  else
    sha256 "a8baa60d4a8e9376b2e214175a00781aeb32f3be840ead3ef3182fc3e23bfbf6"
  end

  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
