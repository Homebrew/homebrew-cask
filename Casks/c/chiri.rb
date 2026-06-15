cask "chiri" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.2"
  sha256 arm:   "9bec2092c46ce05bb2b1cf89d640e8fe26c8c73b7a57cb1e23820b0dfc1e8697",
         intel: "4e23be09ba19c44d1e69f820d7e947fa0b29b534b36a2a1d2bebcf31f06a9bd4"

  url "https://github.com/chiriapp/chiri/releases/download/app-v#{version}/Chiri_#{version}_#{arch}.dmg"
  name "Chiri"
  desc "CalDAV-compatible task management app"
  homepage "https://github.com/chiriapp/chiri"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Chiri.app"

  zap trash: [
    "~/Library/Application Support/garden.chiri.Chiri",
    "~/Library/Caches/garden.chiri.Chiri",
    "~/Library/Logs/garden.chiri.Chiri",
    "~/Library/Preferences/garden.chiri.Chiri.plist",
    "~/Library/WebKit/garden.chiri.Chiri",
  ]
end
