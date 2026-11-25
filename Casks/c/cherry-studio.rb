cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.2.3"
  sha256 arm:          "afa9c479997a3c28b5a8a79d5dff71bd38f0d2d662dce6093aee642ccbaafae3",
         intel:        "f57be2cf11029ed7a457da4e42d01de3a5be106aea5b3cdd52c6237a5d3f22f5",
         arm64_linux:  "ba8efa1b78b52db491fdc1e9e75d49db69d02901e9ad4c5b10f81bde6c14fd6e",
         x86_64_linux: "6c1430b1d7f3903960630b84dca44e59b3f70a7b8af2125a1b30d3f99aa45cbb"

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
