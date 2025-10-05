cask "lobehub" do
  arch arm: "-arm64"

  version "1.134.3"
  sha256 arm:   "19abf75a6ecdf2a1c3720177b3cdcfeea2db47fd26be7a8ebb9e593afcfb81b3",
         intel: "ba944d805941b76fe347de4df0636f52e2ff27a05d8607f8fbdbe234d36acdd2"

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
  depends_on macos: ">= :monterey"

  app "LobeHub-Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.lobehub.lobehub-desktop-beta.sfl*",
    "~/Library/Application Support/LobeHub-Beta",
    "~/Library/Logs/LobeHub-Beta",
    "~/Library/Preferences/com.lobehub.lobehub-desktop-beta.plist",
  ]
end
