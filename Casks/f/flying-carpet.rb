cask "flying-carpet" do
  version "9.0.0"
  sha256 "aa05edc1553b88c9662997e0d76d1d8e46f9a97b55ef02cb2491dfb3268f4a46"

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
