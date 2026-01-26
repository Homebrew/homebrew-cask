cask "akiflow" do
  version "2.66.3,49d9ded8"
  sha256 "d5b302b96c4c07025650ac37b018b0016aa199c45dc4d3db4bb195a1e538da80"

  url "https://download.akiflow.com/builds/Akiflow-#{version.csv.first}-#{version.csv.second}-universal.dmg"
  name "Akiflow"
  desc "Time blocking and productivity platform"
  homepage "https://akiflow.com/"

  livecheck do
    url "https://download.akiflow.com/builds/latest-mac.yml"
    regex(/Akiflow[._-](\d+(?:\.\d+)+)[._-](\h+)[._-]universal\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
