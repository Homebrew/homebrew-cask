cask "lobehub" do
  arch arm: "-arm64"
  os macos: "-mac"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.3.1"
  sha256 arm:          "531a1ace220a9a546f6dded7bea89f01ea755688e686d8788af1ee507ad18fa4",
         intel:        "d19ce8129bc38e1d84a3c11481a5eeb250c17a70280f4da7a6136788e1abf6e1",
         x86_64_linux: "026f23866c51c3be5e8c955e028da667903173f09f7079f17ab15e570f84752a"

  on_macos do
    depends_on macos: :ventura

    app "LobeHub.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop-beta.sfl*",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop.sfl*",
      "~/Library/Application Support/LobeHub",
      "~/Library/Application Support/LobeHub-Beta",
      "~/Library/Logs/LobeHub",
      "~/Library/Logs/LobeHub-Beta",
      "~/Library/Preferences/com.lobehub.lobehub-desktop-beta.plist",
      "~/Library/Preferences/com.lobehub.lobehub-desktop.plist",
      "~/Library/Saved Application State/com.lobehub.lobehub-desktop.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "LobeHub-#{version}.AppImage", target: "LobeHub.AppImage"

    zap trash: "~/.config/LobeHub"
  end

  url "https://github.com/lobehub/lobe-chat/releases/download/v#{version}/LobeHub-#{version}#{arch}#{os}.#{url_end}"
  name "LobeHub"
  desc "AI chat framework"
  homepage "https://github.com/lobehub/lobe-chat"

  livecheck do
    url :url
    regex(/LobeHub[._-]v?(\d+(?:\.\d+)+)#{arch}#{os}\.#{url_end}/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        asset["browser_download_url"]&.[](regex, 1)
      end
    end
  end

  auto_updates true
end
