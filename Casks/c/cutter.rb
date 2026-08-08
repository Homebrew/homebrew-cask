cask "cutter" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "macOS-#{arch}.dmg", linux: "Linux-x86_64.AppImage"

  version "2.5.0"

  on_macos do
    sha256 arm:   "ec08477489cb7f769d4121e5084b09131b02b6a801ac7a2d5896a67e87193452",
           intel: "02a7f1c507239691b151e6cc41a5d33f89d672ec443f12890e31087ad37271a6"

    depends_on macos: :big_sur

    app "Cutter.app"
    command_wrapper "cutter",
                    executable: "#{appdir}/Cutter.app/Contents/MacOS/Cutter"

    zap trash: [
      "~/.config/rizin",
      "~/.local/share/rizin",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/re.rizin.cutter.sfl*",
      "~/Library/Application Support/rizin",
      "~/Library/Preferences/re.rizin.cutter.plist",
      "~/Library/Saved Application State/re.rizin.cutter.savedState",
    ]
  end
  on_linux do
    sha256 "b8ad215d7a9e2af9e1f463511229f16e1f4745a0fb541413e5f4787f949ac0cf"

    depends_on arch: :x86_64

    app_image "Cutter-v#{version}-Linux-x86_64.AppImage", target: "Cutter.AppImage"
  end

  url "https://github.com/rizinorg/cutter/releases/download/v#{version}/Cutter-v#{version}-#{url_end}",
      verified: "github.com/rizinorg/cutter/"
  name "Cutter"
  desc "Reverse engineering platform powered by Rizin"
  homepage "https://cutter.re/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
