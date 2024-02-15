cask "avtouchbar" do
  version "3.0.7,2021.08"
  sha256 "d04c1a6685e7ce59e10bae4464b6a113aa7bf302f5b515768055aa8326ecb8e1"

  url "https://www.avtouchbar.com/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/AVTouchBar-#{version.csv.first}.zip"
  name "AVTouchBar"
  desc "Audio Visualiser for the Touch Bar"
  homepage "https://www.avtouchbar.com/"

  livecheck do
    url "https://www.avtouchbar.com/downloads/"
    regex(%r{href=.*?/uploads/(\d+)/(\d+)/AVTouchBar[._-]?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
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
