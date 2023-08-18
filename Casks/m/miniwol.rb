cask "miniwol" do
  arch arm: "arm"
  arch_suffix = on_arch_conditional intel: "bit"

  on_arm do
    version "2.1.4"
    sha256 "943d1df2842aec49ce3e6fe1b7cb37bc4977e28f0a8ea63467abacd98215799d"
  end
  on_intel do
    version "2.1.3"
    sha256 "3a42570e704616620a74969ce180151553751bbcd33e34cd02194ac4edf50b3a"
  end

  url "https://www.tweaking4all.com/downloads/network/miniWOL-v#{version}-#{arch}64#{arch_suffix}.dmg"
  name "miniWOL"
  desc "Small menu bar tool for sending Wake on LAN (WOL) network packets"
  homepage "https://www.tweaking4all.com/network-internet/miniwol2/"

  livecheck do
    url "https://www.tweaking4all.com/downloads/"
    regex(/href=.*?miniWOL[._-]v?(\d+(?:\.\d+)+)-#{arch}64#{arch_suffix}\.dmg/i)
  end

  app "miniWOL.app"

  zap trash: [
    "~/Library/Preferences/com.Tweaking4all.miniWOL.plist",
    "~/Library/Preferences/miniWOL",
  ]
end
