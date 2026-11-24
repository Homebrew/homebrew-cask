cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "3.5.6,2611246ccxdvdvv"
  sha256 arm:   "e681aad9824aaf34f215319ab2f0606cd3a73aa0ce77ce18628e5164b8e6529c",
         intel: "bb8d242f467e03863a8ef07de0498625089e5dcf9586ad6d3ccc784de3c74d34"

  url "https://download.todesktop.com/2003096gmmnl0g1/Sunsama%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip"
  name "Sunsama"
  desc "Daily planner and calendar"
  homepage "https://www.sunsama.com/desktop"

  livecheck do
    url "https://download.todesktop.com/2003096gmmnl0g1/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Sunsama.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sunsama.native-app.sfl*",
    "~/Library/Application Support/Sunsama",
    "~/Library/Logs/Sunsama",
    "~/Library/Preferences/com.sunsama.native-app.plist",
    "~/Library/Saved Application State/com.sunsama.native-app.savedState",
  ]
end
