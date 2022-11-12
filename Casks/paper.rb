cask "paper" do
  version "5.1.7"
  sha256 "b3ea8669e501f41c4a3f5cdfc326cacb3c70c2cd0b5258ac807bda5ed1930fd6"

  url "https://s3.nsns.in/dl/paper-v#{version}.dmg",
      verified: "s3.nsns.in/"
  name "pap.er"
  desc "Pap.er, 4K 5K HD Wallpaper Application"
  homepage "https://paper.photos/"

  livecheck do
    url :homepage
    regex(/href=.*?paper[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "pap.er.app"

  uninstall quit: "com.w.paper"

  zap trash: [
    "~/Library/Containers/com.w.paper-LaunchAtLoginHelper",
    "~/Library/Containers/com.w.paper",
  ]
end
