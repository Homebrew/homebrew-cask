cask "paper" do
    version "5.1.1"
    sha256 "419a19535da009533c661ec4da35df9a806558783131d458aed9fe6b22c7313b"
  
    url "https://s3.nsns.in/dl/paper-v#{version}.dmg"
    name "pap.er"
    desc "4K 5K HD Wallpaper Application"
    homepage "https://paper.photos/"
  
    livecheck do
        url :url
        strategy :extract_plist
    end

    depends_on macos: ">= :big_sur"

    app "pap.er.app"

    uninstall quit: "com.w.paper"

    zap trash: [
        "~/Library/Containers/com.w.paper-LaunchAtLoginHelper",
        "~/Library/Containers/com.w.paper"
      ]
  end
