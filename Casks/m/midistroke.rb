cask "midistroke" do
  version "1.4"
  sha256 :no_check

  url "https://www.charlie-roberts.com/midiStroke/midiStroke.app.zip"
  name "midiStroke"
  desc "Converts midi note, program or CC messages into keystrokes"
  homepage "https://www.charlie-roberts.com/midiStroke/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "midiStroke.app"

  zap trash: "~/Library/Application Support/midiStroke"
end
