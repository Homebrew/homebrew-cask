cask "shotcut" do
  arch = Hardware::CPU.intel? ? "macos" : "macos-ARM64"

  version "22.01.30"

  if Hardware::CPU.intel?
    sha256 "ec4346088a1049aa30b95ebce31f194d7054484afbd6b53db1932228112e0c5e"
  else
    sha256 "140eb77224998f85e52358399d4ec39d427bf3bc03a1dc2034415c48396df3b9"
  end

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-#{arch}-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end
