cask "avtouchbar" do
  version "3.0.7,2021.08"
  sha256 "d04c1a6685e7ce59e10bae4464b6a113aa7bf302f5b515768055aa8326ecb8e1"

  url "https://www.avtouchbar.com/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/AVTouchBar-#{version.csv.first}.zip"
  name "AVTouchBar"
  desc "Audio Visualizer for the Touch Bar"
  homepage "https://www.avtouchbar.com/"

  livecheck do
    url "https://www.avtouchbar.com/downloads/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/uploads/(\d+)/(\d+)/AVTouchBar[._-]?(\d+(?:\.\d+)+)\.zip}i)
      next if match.blank?

      "#{match[3]},#{match[1]}.#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "AVTouchBar.app"

  zap trash: [
    "~/Library/Containers/com.jakefishman.TouchBarVisualizer",
    "~/Library/Containers/com.jakefishman.TouchBarVisualizer-LaunchAtLoginHelper",
  ]
end
