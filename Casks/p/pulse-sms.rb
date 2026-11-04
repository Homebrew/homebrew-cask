cask "pulse-sms" do
  version "4.5.4"
  sha256 "9b7c15fb4df70f27e410bac32e66b94a1c931fb9f994021f7cfc45a898e75291"

  url "https://github.com/maplemedia/pulse-sms-desktop/releases/download/v#{version}/pulse-sms-#{version}-universal.dmg"
  name "Pulse SMS"
  desc "Desktop client for Pulse SMS"
  homepage "https://home.pulsesms.app/overview/"

  livecheck do
    url :url
    regex(/^pulse[._-]sms[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg$/i)
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

  depends_on macos: :monterey

  app "Pulse SMS.app"

  zap trash: [
    "~/Library/Application Support/pulse-sms",
    "~/Library/Logs/pulse-sms",
  ]
end
