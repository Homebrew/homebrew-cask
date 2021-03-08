cask "multi" do
  version "2.1.2"
  sha256 "808989027656c166d703c31934a673708a0947cc812fb9e66adaa2c878d3f981"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  appcast "https://github.com/hkgumbs/multi/releases.atom"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  app "Multi.app"

  zap trash: [
    "~/Library/Caches/llc.gumbs.multi.*",
    "~/Library/Caches/llc.gumbs.multi",
    "~/Library/Preferences/llc.gumbs.multi.*.plist",
    "~/Library/Saved Application State/llc.gumbs.multi.savedState",
  ]
end
