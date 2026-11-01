cask "lobehub" do
  arch arm: "-arm64"
  os macos: "-mac"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.3.0"
  sha256 arm:          "37a2c12a77308658f13ee8df83302279b2bd66be3765eeda48bfbb6ca7ca56b4",
         intel:        "fae8cd5a13ca32a1199895af6b8aecb418269e0ec85362af4df405e54616f56c",
         x86_64_linux: "542600687a68e1427300a6e8dad4584d93455444eec442b61fdab04ee9e6066d"

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
