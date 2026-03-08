cask "multi" do
  version "3.0.2"
  sha256 "b0130645123e501cfe4d02c7de3c6d8cd9e0bf263af85671244de1d150d84916"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  depends_on macos: ">= :ventura"

  app "Multi.app"

  zap trash: [
    "~/Library/Caches/llc.gumbs.multi",
    "~/Library/Caches/llc.gumbs.multi.*",
    "~/Library/Preferences/llc.gumbs.multi.*.plist",
    "~/Library/Saved Application State/llc.gumbs.multi.savedState",
  ]
end
