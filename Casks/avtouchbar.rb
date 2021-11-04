cask "avtouchbar" do
  version "3.0.7"
  sha256 "d04c1a6685e7ce59e10bae4464b6a113aa7bf302f5b515768055aa8326ecb8e1"

  url "https://www.avtouchbar.com/wp-content/uploads/2021/08/AVTouchBar-#{version}.zip"
  name "AVTouchBar"
  desc "Audio Visualizer for the Touch Bar"
  homepage "https://www.avtouchbar.com/"

  livecheck do
    url "https://www.avtouchbar.com/downloads/"
    strategy :homepage
    regex(%r{href=.*?/AVTouchBar[._-]?(\d+(?:\.\d+)+)\.z}i)
  end

  auto_updates true

  app "AVTouchBar.app"
end
