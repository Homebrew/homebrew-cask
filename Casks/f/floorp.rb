cask "floorp" do
  version "12.20.2"
  sha256 "f45684a19cd787cc78e151fc6d60fbc9605b3526a7f272fa1d2c896905824674"

  url "https://github.com/Floorp-Projects/Floorp/releases/download/v#{version}/floorp-macOS-universal.dmg"
  name "Floorp browser"
  desc "Privacy-focused Firefox-based browser"
  homepage "https://floorp.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Floorp.app"

  zap trash: [
        "~/Library/Application Support/Floorp",
        "~/Library/Caches/Floorp",
        "~/Library/Caches/Mozilla/updates/Applications/Floorp",
        "~/Library/Preferences/*.floorp.plist",
        "~/Library/Saved Application State/*.floorp.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
