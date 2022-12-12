cask "paper" do
  version "5.2.5"
  sha256 "ef1f6f8848ca225fea03814b5431c1ae4177538c8ae3b0c7eeb80c7bc104b74c"

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
