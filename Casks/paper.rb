cask "paper" do
  version "5.1.8"
  sha256 "e8c40ad230b78be686ccf8efcac3731c3567fb7c82dbe4fee2df0d0c80d54534"

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
