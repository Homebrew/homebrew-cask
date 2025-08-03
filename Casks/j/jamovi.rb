cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.4.0"
  sha256 arm:   "67d83d46a837c9aedf3090e654bc7991056e155e6027e5e512d2bb11c9c66cb1",
         intel: "e5c2b2fe962a825bb888e94c970b199d461f8589f136b41b4e23c41534447833"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
