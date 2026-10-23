cask "bruno" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.3.0"
  sha256 arm:          "bb4c4d8de817a6f529880627606137fd16346ddece547c6a0862e84bd1cc69bf",
         intel:        "d17034ae3f444215419d64dee5d5fbd28a728b54181bef4a70692cee259b722a",
         arm64_linux:  "6048c3aeb76607c71df7558deea83cfef9d33cf24a63da9e7c5268ab19d13469",
         x86_64_linux: "3c386b1007f66d875c34a2a502063fbad65c66e37409a316ebe518788b1e80bb"

  on_macos do
    auto_updates true

    app "Bruno.app"

    zap trash: [
          "~/Library/Application Support/bruno",
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.usebruno.app.sfl*",
          "~/Library/Logs/bruno",
          "~/Library/Preferences/com.usebruno.app.plist",
          "~/Library/Saved Application State/com.usebruno.app.savedState",
        ],
        rmdir: "~/Documents/bruno"
  end
  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage", target: "Bruno.AppImage"
  end

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}.#{url_end}"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
