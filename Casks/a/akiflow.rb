cask "akiflow" do
  version "2.86.9,779a9203"
  sha256 "fd6dec939bcca827961aa4f6efe0221f6d790640760464fe5791b4e77a9ffd78"

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
  depends_on macos: :ventura

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.akiflow.akiflow.sfl*",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
