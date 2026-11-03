cask "inputconfig" do
  version "1.8,34"
  sha256 "6d52f6ae7f78930211869dbec3de8cb3b6272b710c01d7c7e83e860274ea3237"

  url "https://github.com/ryleighnewman/homebrew-inputconfig/releases/download/v#{version.csv.first}-#{version.csv.second}/InputConfig-#{version.csv.first}.zip"
  name "InputConfig"
  desc "Map game controllers, keyboards, mice and MIDI devices to keys and the pointer"
  homepage "https://inputconfig.com/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)-(\d+)$/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :sonoma

  app "InputConfig.app"

  zap trash: [
    "~/Library/Application Scripts/com.inputconfig.app",
    "~/Library/Containers/com.inputconfig.app",
  ]
end
