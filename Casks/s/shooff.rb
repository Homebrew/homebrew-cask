cask "shooff" do
  version "1.0.1"
  sha256 "f52fa9dec86cdc5d01df3f76c9055582d6190d98040e2cfe4790fe563937f8e1"

  url "https://pub-f2bb25a92dec408ca8deaf24d04d8855.r2.dev/releases/shooff-#{version}-arm64.dmg"
  name "shooff"
  desc "Private, encrypted media library — download videos and comics, organize, and stream"
  homepage "https://shooff.my/"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "shooff.app"

  zap trash: [
    "~/Library/Application Support/shooff",
    "~/Library/Caches/shooff",
    "~/Library/Preferences/my.shooff.app.plist",
    "~/Library/Saved Application State/my.shooff.app.savedState",
  ]

  caveats <<~EOS
    shooff is an Apple Silicon native app. On first launch, right-click the
    app and select "Open" if macOS shows a Gatekeeper warning.

    The app is signed with a Developer ID certificate and notarized by Apple.
  EOS
end
