cask "clashxr" do
  version "1.30.1"
  sha256 "13b845e31e13380e031a4df3650711398cbb16f8e2b01b91736a8b9d0bfd753a"

  url "https://github.com/paradiseduo/ClashXR/releases/download/#{version}/ClashXR.dmg"
  appcast "https://github.com/paradiseduo/ClashXR/releases.atom"
  name "ClashXR"
  desc "Rule-based custom proxy with GUI based on clash"
  homepage "https://github.com/paradiseduo/ClashXR"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "ClashXR.app"

  zap trash: [
    "~/Library/Preferences/com.west2online.ClashXR.plist",
    "~/Library/Logs/ClashXR",
    "~/.config/clash/",
  ]
end
