cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "3.5.4,261121vdacnx4z4"
  sha256 arm:   "71a9b7a984be993b63ef87e0188f7b5b589a72cd5692dbcf82d848ee6bf90a29",
         intel: "a37a473bdd2e34e6de0a63762c742de9bb2c5fe7a9ce4d950af9be7c054777a1"

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
