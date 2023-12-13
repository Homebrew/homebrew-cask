cask "capcut" do
  version "0_1.2.4"
  sha256 "f42ec732aa94552def1452cbc2099dba46139a052fa97313bcba4475cac492f0"

  url "https://lf16-capcut.faceulv.com/obj/capcutpc-packages-us/installer/capcut_capcutpc_#{version}_installer.dmg"
  name "CapCut"
  desc "Creative platform powered by AI that enables video editing and image design"
  homepage "https://www.capcut.com/"

  installer script: {
    executable: "#{staged_path}/CapCut-Downloader.app/Contents/MacOS/CapCut-Downloader",
  }

  app "CapCut.app"

  zap trash: [
    "/Library/Logs/DiagnosticReport/CapCut-Downloader_*.diag",
    "~/Library/Application Scripts/com.lemon.lvoverseas",
    "~/Library/Containers/com.lemon.lvoverseas",
    "~/Library/Group Containers/22MMUN2RN5.lv",
    "~/Library/Group Containers/22MMUN2RN5.ve",
  ]
end
