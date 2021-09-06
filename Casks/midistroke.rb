cask "midistroke" do
  version "1.4"
  sha256 :no_check

  url "https://www.charlie-roberts.com/midiStroke/midiStroke.app.zip"
  name "midiStroke"
  homepage "https://www.charlie-roberts.com/midiStroke/"

  app "midiStroke.app"

  zap trash: "~/Library/Application Support/midiStroke"
end
