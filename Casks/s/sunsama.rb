cask "sunsama" do
  arch arm: "arm64", intel: "x64"

  version "3.2.9,260311lv2teygik"
  sha256 arm:   "241a61b88e13b22320fb3a846e6897dac913e0399ac9e0d772c1f341c9bfc37f",
         intel: "dd096db50f9c94d014c9f7941743b4b378ea9784a32aa9691426fd273806bee4"

  url "https://download.todesktop.com/2003096gmmnl0g1/Sunsama%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/2003096gmmnl0g1/"
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
  depends_on macos: ">= :monterey"

  app "Sunsama.app"

  zap trash: [
    "~/Library/Application Support/Sunsama",
    "~/Library/Logs/Sunsama",
    "~/Library/Preferences/com.sunsama.native-app.plist",
    "~/Library/Saved Application State/com.sunsama.native-app.savedState",
  ]
end
