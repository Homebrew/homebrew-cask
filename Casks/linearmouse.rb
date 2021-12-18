cask "linearmouse" do
  version "0.3.1"
  sha256 "c95286e1c6eb8592f57aac0c0dd31a157b93e7f0879cc62ed09e07b0638df5b0"

  url "https://github.com/lujjjh/LinearMouse/releases/download/v#{version}/LinearMouse.dmg",
      verified: "github.com/lujjjh/LinearMouse"
  name "LinearMouse"
  desc "Customize mouse behavior"
  homepage "https://linearmouse.org/"

  depends_on macos: ">= :big_sur"

  app "LinearMouse.app"

  zap trash: "~/Library/Preferences/com.lujjjh.LinearMouse.plist"
end
