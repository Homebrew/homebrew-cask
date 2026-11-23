cask "lobehub" do
  arch arm: "-arm64"
  os macos: "-mac"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.3.5"
  sha256 arm:          "6fb383b55470fa99823c89d9e34c4aa839c30aa624b6784cc34e99a00ef6ab68",
         intel:        "47d32052063d68e940995bdd9f7ab2b5db8899a99c42c60df7c493187442989b",
         x86_64_linux: "eb8bff6d2d9c35592f45130ed29b4420933a51f11635c3bd1b5e843ffad03d0f"

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
