cask "flutterflow" do
  version "4.1.85"
  sha256 :no_check

  url "https://storage.googleapis.com/flutterflow-downloads/macos/flutterflow-latest-macos.dmg", verified: "storage.googleapis.com/flutterflow-downloads/"
  name "flutterflow"
  desc "Build applications faster than ever"
  homepage "https://flutterflow.io/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url "https://apps.apple.com/us/app/flutterflow-build-different/id6457995947"
    strategy :page_match
    regex(%r{<p class="l-column small-6 medium-12 whats-new__latest__version">Version (\d+\.\d+\.\d+)</p>})
  end

  depends_on macos: ">= :catalina"

  app "FlutterFlow.app"

  zap trash: [
    "~/Library/Application Support/io.flutterflow.prod.mac",
    "~/Library/Caches/io.flutterflow.prod.mac",
    "~/Library/Preferences/io.flutterflow.prod.mac.plist",
  ]
end
