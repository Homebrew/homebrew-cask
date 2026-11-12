cask "lobehub" do
  arch arm: "-arm64"
  os macos: "-mac"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.3.3"
  sha256 arm:          "d4987fb2d201b3a7e236f3ec829c4daad0e08e16f842c8ae68caf6858e7319ba",
         intel:        "99f503589e8bb4f625de7d59f17ba7229cbd91916c1d07152a22eb7a90eb3d9d",
         x86_64_linux: "8cf54dacd33995af5834ce64d17cd6f000e07d4f2fe86088e0e6da0fe0f619a3"

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
