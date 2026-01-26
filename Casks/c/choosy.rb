cask "choosy" do
  on_sonoma :or_older do
    on_catalina :or_older do
      version "2.2.1"
      sha256 "71fe3c3c592d449063189a575a39b1f00735ee20cf1de94552896f5f8e93bf47"
    end
    on_big_sur do
      version "2.3.1"
      sha256 "8d6a44b78ed256d6f502872fd1f62cf1f7fea877906bedddc5bbf26f93b6ea57"
    end
    on_monterey do
      version "2.3.1"
      sha256 "8d6a44b78ed256d6f502872fd1f62cf1f7fea877906bedddc5bbf26f93b6ea57"
    end
    on_ventura do
      version "2.3.1"
      sha256 "8d6a44b78ed256d6f502872fd1f62cf1f7fea877906bedddc5bbf26f93b6ea57"
    end
    on_sonoma do
      version "2.4.2"
      sha256 "060092e497c34a1e1ea4226f54910ba283f004ea131946bd0d423e220227a2cc"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "2.5.2"
    sha256 "9ad4bb583c48b9ddd7a90b2dfb00427c09ce3d55c9965f89d96f81ecca274dd8"

    livecheck do
      url "https://choosy.app/sparkle/feed"
      strategy :sparkle
    end
  end

  url "https://downloads.choosy.app/choosy_#{version}.zip"
  name "Choosy"
  desc "Open links in any browser"
  homepage "https://choosy.app/"

  auto_updates true

  pkg "Choosy.pkg"

  uninstall quit:    "com.choosyosx.Choosy",
            pkgutil: "com.choosyosx.Choosy"

  zap trash: [
    "~/Library/Application Scripts/*.com.choosyosx.Choosy",
    "~/Library/Application Scripts/com.choosyosx.Choosy.Safari",
    "~/Library/Application Scripts/com.choosyosx.Choosy.Share",
    "~/Library/Application Support/BraveSoftware/Brave-Browser-Beta/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/BraveSoftware/Brave-Browser-Nightly/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/BraveSoftware/Brave-Browser/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Choosy",
    "~/Library/Application Support/com.operasoftware.Opera/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/com.operasoftware.OperaDeveloper/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/com.operasoftware.OperaNext/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Google/Chrome Beta/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Google/Chrome Canary/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Google/Chrome Dev/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Microsoft Edge Beta/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Microsoft Edge Canary/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Microsoft Edge Dev/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Microsoft Edge/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Vivaldi Snapshot/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Application Support/Vivaldi/NativeMessagingHosts/com.choosyosx.choosy.nativemessaging.json",
    "~/Library/Caches/com.apple.helpd/Generated/com.choosyosx.Choosy.help*",
    "~/Library/Caches/com.choosyosx.Choosy",
    "~/Library/Containers/com.choosyosx.Choosy.Safari",
    "~/Library/Containers/com.choosyosx.Choosy.Share",
    "~/Library/Group Containers/*.com.choosyosx.Choosy",
    "~/Library/HTTPStorages/com.choosyosx.Choosy",
    "~/Library/Preferences/com.choosyosx.ChoosyPrefPane.plist",
  ]
end
