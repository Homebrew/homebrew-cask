cask "paper" do
  version "5.3.0"
  sha256 "475c6938114873fc527486e8c116dbba34856420dcdcfbb767c74e9c8f16c3c6"

  url "https://s3.nxn.fun/dl/paper-v#{version}.dmg",
      verified: "s3.nxn.fun/"
  name "pap.er"
  desc "Pap.er, 4K 5K HD Wallpaper Application"
  homepage "https://paper.photos/"

  livecheck do
    url :homepage
    regex(/paper[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "pap.er.app"

  uninstall quit: "com.w.paper"

  zap trash: [
    "~/Library/Containers/com.w.paper",
    "~/Library/Containers/com.w.paper-LaunchAtLoginHelper",
  ]
end
