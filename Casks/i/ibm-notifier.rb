cask "ibm-notifier" do
  version "3.2.3,135"
  sha256 "2b4d13398d68a2305574567f486c34204998641206cd21ff2c2d816e346ab257"

  url "https://github.com/IBM/mac-ibm-notifications/releases/download/v-#{version.csv.first}-b-#{version.csv.second}/IBM.Notifier.zip"
  name "IBM Notifier"
  desc "Agent that displays custom notifications and alerts to end users"
  homepage "https://github.com/IBM/mac-ibm-notifications"

  livecheck do
    url :url
    regex(/v-(\d+(?:\.\d+)+)-b-(\d+)/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :big_sur

  app "IBM Notifier.app"
  binary "#{appdir}/IBM Notifier.app/Contents/MacOS/IBM Notifier"

  zap trash: [
    "~/Library/Caches/com.ibm.cio.notifier",
    "~/Library/HTTPStorages/com.ibm.cio.notifier",
    "~/Library/Preferences/com.ibm.cio.notifier.plist",
    "~/Library/Saved Application State/com.ibm.cio.notifier.savedState",
  ]
end
