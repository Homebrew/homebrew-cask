cask "multi" do
  version "2.1.4"
  sha256 "29b04f3a3e73d3ae63e756c907998d11f951df7874f13f5c8bb47a372b0f4590"

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
