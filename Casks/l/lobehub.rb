cask "lobehub" do
  arch arm: "-arm64"
  os macos: "-mac"
  url_end = on_system_conditional macos: "zip", linux: "AppImage"

  version "2.3.2"
  sha256 arm:          "e506418aa3451a607dc7193fd31e7be877496aee4cad8e8cf564bfa8d448dd8e",
         intel:        "3827536c42b3c66befaf5c2aa5f50c97c9149b2a8dba8477a01662ce74f98417",
         x86_64_linux: "40f062948abf4bd5a4573cfdfe9286100edbd0a351d2ef87cf6b666020ad7a1d"

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
