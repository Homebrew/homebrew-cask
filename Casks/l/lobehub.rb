cask "lobehub" do
  arch arm: "-arm64"

  version "1.127.3"
  sha256 arm:   "66605996ed9b9ffd7b8ac4be181d9579e3aadab5e2c38dfa153f10fb9bb3e49a",
         intel: "8b622d78e78ce3c902abdce3887f9d716fe8a1c6e8e3f307f628354a4beb7090"

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
