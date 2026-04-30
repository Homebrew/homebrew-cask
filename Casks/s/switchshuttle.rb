cask "switchshuttle" do
  version "2.1.1"
  sha256 "b83d11cb17481151ad750e3250f06fba201a3952e90ca871bd764fc84e1869eb"

  url "https://github.com/s00d/switchshuttle/releases/download/app-v#{version}/switch-shuttle_#{version}_universal.dmg"
  name "SwitchShuttle"
  desc "Menu bar application to run predefined commands in a terminal"
  homepage "https://github.com/s00d/switchshuttle"

  livecheck do
    url "https://api.github.com/repos/s00d/switchshuttle/releases/latest"
    regex(/^app-v(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on :macos

  app "switch-shuttle.app"

  zap trash: [
    "~/.config/switch-shuttle",
    "~/Library/Application Support/com.SwitchShuttle",
    "~/Library/Application Support/switch-shuttle",
    "~/Library/Caches/com.SwitchShuttle",
    "~/Library/Caches/switch-shuttle",
    "~/Library/Preferences/com.SwitchShuttle.plist",
    "~/Library/Saved Application State/com.SwitchShuttle.savedState",
  ]
end
