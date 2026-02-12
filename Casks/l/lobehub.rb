cask "lobehub" do
  arch arm: "-arm64"

  version "2.1.28"
  sha256 arm:   "ff85988cb4cd386a2c3b4eabd9e90191003f38bfa1683a56839dbfe9d8fbadb6",
         intel: "5cd0ad07a0eb7eea1bda0fef0bca9c024084f047cda64e923c48f27646a26c68"

  url "https://github.com/lobehub/lobe-chat/releases/download/v#{version}/LobeHub-#{version}#{arch}-mac.zip"
  name "LobeHub"
  desc "AI chat framework"
  homepage "https://github.com/lobehub/lobe-chat"

  # Not every release on GitHub has assets, so we have to find the newest one
  # with the files the cask uses.
  livecheck do
    url :url
    regex(/LobeHub[._-]v?(\d+(?:\.\d+)+)#{arch}[._-]mac\.zip/i)
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
  depends_on macos: ">= :monterey"

  app "LobeHub.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop-beta.sfl*",
    "~/Library/Application Support/LobeHub-Beta",
    "~/Library/Logs/LobeHub-Beta",
    "~/Library/Preferences/com.lobehub.lobehub-desktop-beta.plist",
  ]
end
