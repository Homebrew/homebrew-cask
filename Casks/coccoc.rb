cask "coccoc" do
  rpath = Hardware::CPU.intel? ? "mac" : "mac/arm64"

  version "106.0.136"

  if Hardware::CPU.intel?
    sha256 "757d28a0fe69a37b6c2ed4f6824e7eb8aa154cdbe82a3e3d5f1e414fdd9d6682"
  else
    sha256 "ac92688d110bc88e69caa9b052f4121f17a8334e773738c3403004b31749b819"
  end

  url "https://files-cdn.coccoc.com/browser/#{rpath}/coccoc.dmg"
  name "Cốc Cốc"
  desc "Chromium-based web browser"
  homepage "https://coccoc.com/"

  app "CocCoc.app"

  uninstall launchctl: "com.coccoc.CocCoc"

  zap trash: [
    "~/Library/Application Support/Coccoc",
    "~/Library/Caches/Coccoc",
    "~/Library/Caches/com.coccoc.Coccoc",
    "~/Library/Preferences/com.coccoc.Coccoc.plist",
    "~/Library/Saved Application State/com.coccoc.Coccoc.savedState",
  ]
end
