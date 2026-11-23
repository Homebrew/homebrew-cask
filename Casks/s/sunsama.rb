cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "3.5.5,261123wqkzep5qp"
  sha256 arm:   "257ae2bc5ecb2cdf4ed106ab42a7deef84d9ef3c75b22aade1296862554f793b",
         intel: "c342201f38ce56c2e6923eb7133d41167d6c38fec6a30e8a932087cad1fc6778"

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
