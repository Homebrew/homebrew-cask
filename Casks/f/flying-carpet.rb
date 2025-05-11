cask "flying-carpet" do
  version "9.0.4"
  sha256 "686dfec58bbd3cbfd495c74dd5c8c7c7d5fd18b5b0b108e6e44b69d6433ac80a"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/macOS_FlyingCarpet_#{version}.zip"
  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "FlyingCarpet.app"

  zap trash: [
    "~/Library/Caches/dev.spiegl",
    "~/Library/Preferences/com.yourcompany.flyingcarpet.plist",
    "~/Library/Preferences/dev.spiegl.plist",
    "~/Library/Saved Application State/com.yourcompany.flyingcarpet.savedState",
    "~/Library/Saved Application State/dev.spiegl.savedState",
    "~/Library/WebKit/dev.spiegl",
  ]
end
