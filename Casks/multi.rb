cask "multi" do
  version "2.1.3"
  sha256 "27837b234cf68f9110e262b32a7921506e909d1f9dd638d4adcc03a279098741"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
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
