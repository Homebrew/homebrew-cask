cask "multi" do
  version "3.0.1"
  sha256 "6df8a9f8db0b69733d91428eba815928bb3b65ec526a7c714de9d8e95a03e2f8"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  app "Multi.app"

  zap trash: [
    "~/Library/Caches/llc.gumbs.multi",
    "~/Library/Caches/llc.gumbs.multi.*",
    "~/Library/Preferences/llc.gumbs.multi.*.plist",
    "~/Library/Saved Application State/llc.gumbs.multi.savedState",
  ]
end
