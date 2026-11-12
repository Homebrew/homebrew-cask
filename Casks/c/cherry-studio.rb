cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.1"
  sha256 arm:          "6d74babc2114ec2de10074dfc03dcebe6fc5c90c5d5dba4ebcf5b0d7b7a4df5a",
         intel:        "d23309bf2db73a95aa9725e99543c1bdb5be7ade1cc9e340c3ddc00bc74babe8",
         arm64_linux:  "65fd394e0c4d7c9ca6e8c33d9af3953504bf319ef33f890f3ebef97036dbde67",
         x86_64_linux: "81fa35865d21ee3b85d13a51b550f2136ba98043ac228c9f7c237d98e4873877"

  on_macos do
    depends_on macos: :ventura

    app "Cherry Studio.app"
    binary "#{appdir}/Cherry Studio.app/Contents/MacOS/Cherry Studio", target: "cherry-studio"

    zap trash: [
      "~/Library/Application Support/CherryStudio",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.kangfenmao.cherrystudio.sfl*",
      "~/Library/Caches/cherrystudio-updater",
      "~/Library/HTTPStorages/com.kangfenmao.CherryStudio",
      "~/Library/Logs/CherryStudio",
      "~/Library/Preferences/com.kangfenmao.CherryStudio.plist",
      "~/Library/Saved Application State/com.kangfenmao.CherryStudio.savedState",
    ]
  end
  on_linux do
    app_image "Cherry-Studio-#{version}-linux-#{arch}.AppImage", target: "Cherry Studio.AppImage"

    zap trash: [
      "~/.cache/cherrystudio-updater",
      "~/.cherrystudio",
      "~/.config/CherryStudio",
      "~/.local/share/applications/cherrystudio-url-handler.desktop",
    ]
  end

  url "https://github.com/CherryHQ/cherry-studio/releases/download/v#{version}/Cherry-Studio-#{version}-#{os}-#{arch}.#{url_end}"
  name "Cherry Studio"
  desc "Desktop client that supports multiple LLM providers"
  homepage "https://www.cherry-ai.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
