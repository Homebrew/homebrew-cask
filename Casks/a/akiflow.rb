cask "akiflow" do
  version "2.64.2,4d920184"
  sha256 "1744af17b2bb15f8ce294d5ca2442c1dedc84bdf679a7459009f53a354f4f989"

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
