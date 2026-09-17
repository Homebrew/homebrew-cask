cask "floorp" do
  version "12.18.0"
  sha256 "0332d3abb3f12c2bca8820caf86c31b6ec2e3c791f70971adaeccb471d399527"

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
