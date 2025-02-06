cask "akiflow" do
  version "2.46.30,bf094ffc"
  sha256 "6733746e7ff7bc0b1e1609f7837bfff20198d23c09c6eb8d24ffd6bc0e98ebe4"

  url "https://download.akiflow.com/builds/Akiflow-#{version.csv.first}-#{version.csv.second}-universal.dmg"
  name "Akiflow"
  desc "Time blocking and productivity platform"
  homepage "https://akiflow.com/"

  livecheck do
    url "https://akiflow.com/download/latest"
    regex(/Akiflow[._-](\d+(?:\.\d+)+)[._-](\h+)[._-]universal\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Akiflow.app"

  zap trash: [
    "~/Library/Application Support/Akiflow",
    "~/Library/Preferences/Akiflow",
    "~/Library/Preferences/com.akiflow.akiflow.plist",
    "~/Library/Saved Application State/com.akiflow.akiflow.savedState",
  ]
end
