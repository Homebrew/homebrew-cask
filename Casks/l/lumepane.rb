cask "lumepane" do
  version "8.0.11"
  sha256 "ca5a9a037d5745c84315fc08558323862bcb735badf3321ce5836c34a223f4d1"

  url "https://lumepane.com/dl/DisplayPilot-#{version}.dmg",
      verified: "lumepane.com/"
  name "LumePane"
  desc "Native macOS display, scroll and window console"
  homepage "https://lumepane.com/"

  livecheck do
    url "https://lumepane.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sonoma

  app "DisplayPilot.app"

  uninstall quit: "com.neeson.displaypilot"

  zap trash: [
    "~/Library/Application Support/com.neeson.displaypilot",
    "~/Library/Caches/com.neeson.displaypilot",
    "~/Library/Preferences/com.neeson.displaypilot.plist",
    "~/Library/Saved Application State/com.neeson.displaypilot.savedState",
  ]

  caveats <<~EOS
    LumePane is a paid app with a 14-day, fully featured trial.
    Purchase (one-time, no subscription): https://lumepane.com/checkout?src=brew
  EOS
end
