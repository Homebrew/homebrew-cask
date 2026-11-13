cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.2"
  sha256 arm:          "5de08748e4a62023e5b942722fc84623e5c466d51b403a3429a0f29dc31270cd",
         intel:        "cfc96697326e2abaaf3627bf5487cda62a8162fa55d7c4161fecea7ef75fe06a",
         arm64_linux:  "3cbf2d38e3b2acb63f1134331745bf24acf5ad0c054440897b6906baa78d3bae",
         x86_64_linux: "aafd1731cd6aaa99ccce2f5b8333fb06e14f2a9b7c03a46c3cd56f07f3a7401b"

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
