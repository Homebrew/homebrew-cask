cask "multi" do
  version "2.2.3"
  sha256 "fe8a407f2beba76fa695d37c9c05a41fa2db4a9fe2198383093e2e330f9333d8"

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
