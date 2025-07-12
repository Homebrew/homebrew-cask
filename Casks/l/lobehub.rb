cask "lobehub" do
  arch arm: "-arm64"

  version "1.97.13"
  sha256 arm:   "b13c7b06d778538ac0e393a00dc86ea0c89c9ceab2711eafe04485dd8e3bb706",
         intel: "6e17aebc707bb6f607ab7e71b067d2da4af265a9c5f78e7d41f5eee9e04e77ec"

  url "https://github.com/lobehub/lobe-chat/releases/download/v#{version}/LobeHub-Beta-#{version}#{arch}-mac.zip"
  name "LobeHub"
  desc "AI chat framework"
  homepage "https://github.com/lobehub/lobe-chat"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^LobeHub(?:[._-]Beta)?[._-]v?(\d+(?:\.\d+)+)#{arch}[._-]mac\.zip$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "LobeHub-Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop-beta.sfl*",
    "~/Library/Application Support/LobeHub-Beta",
    "~/Library/Logs/LobeHub-Beta",
    "~/Library/Preferences/com.lobehub.lobehub-desktop-beta.plist",
  ]
end
