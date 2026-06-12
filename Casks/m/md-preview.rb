cask "md-preview" do
  version "1.1.19"
  sha256 "af1e3786523f1edbae515ae83ea66edc520850ee3fdb230a1097122dea29a1bd"

  url "https://github.com/vorojar/md-preview/releases/download/v#{version}/MD-Preview-macOS-universal.dmg",
      verified: "github.com/vorojar/md-preview/"
  name "MD Preview"
  desc "Native Markdown previewer for AI-generated docs and technical notes"
  homepage "https://vorojar.github.io/md-preview/"

  livecheck do
    url :url
    regex(%r{/download/v?(\d+(?:\.\d+)+)/MD[._-]Preview[._-]macOS[._-]universal\.dmg}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true

  app "MD Preview.app"
  binary "#{appdir}/MD Preview.app/Contents/MacOS/md-preview"

  zap trash: [
    "~/.config/md-preview",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mdpreview.app.sfl*",
    "~/Library/Caches/com.mdpreview.app",
    "~/Library/HTTPStorages/com.mdpreview.app",
    "~/Library/Preferences/com.mdpreview.app.plist",
    "~/Library/Saved Application State/com.mdpreview.app.savedState",
  ]
end
