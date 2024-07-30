cask "offset-explorer" do
  version "3.0"
  sha256 :no_check

  url "https://www.kafkatool.com/download2/offsetexplorer.dmg"
  name "Offset Explorer"
  name "Kafka Tool"
  desc "GUI for managing and using Apache Kafka clusters"
  homepage "https://www.kafkatool.com/index.html"

  livecheck do
    url "https://www.kafkatool.com/download.html"
    regex(/Offset\s*Explorer\s*v?(\d+(?:\.\d+)+)/i)
  end

  app "Offset Explorer 2.app"

  zap trash: "~/.kafkatool2"

  caveats do
    requires_rosetta
  end
end
