cask "lobehub" do
  arch arm: "-arm64"

  version "1.124.1"
  sha256 arm:   "f48b36385ed94beaeb58172f0c048c0c5fa6327964b05f4c0a6541b149265456",
         intel: "472042e5b3db42750bd42ec73f816ff1812909f3a558c2d08f39147e870f9615"

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
