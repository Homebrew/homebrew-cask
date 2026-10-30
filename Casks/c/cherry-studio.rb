cask "cherry-studio" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.9"
  sha256 arm:          "c82a2474c5c1c0dc3a575a7efa5892b3a9fec04373fdf296fe86ac662311d427",
         intel:        "593b8b734c936b5d757ac5d463bb0da22aa4de77854cfc80b7f90aae4094c330",
         arm64_linux:  "3c135ebb425bab46cfb1da2c0c6f7bd145e6cafd9b8d1a7c8c8e03b22a6b4f36",
         x86_64_linux: "16c4f69796d9c4c22ad9297ac4736e058feceea442b8b1ca156cd3465a0da85f"

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
