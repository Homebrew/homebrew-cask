cask "movist" do
  version "0.6.9,08e974e3+"
  sha256 :no_check

  url "https://github.com/downloads/samiamwork/Movist/Movist.app.zip"
  name "Movist"
  desc "Movie Player based on QuickTime & FFmpeg"
  homepage "https://github.com/samiamwork/Movist"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Movist.app"
end
