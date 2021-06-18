cask "offset-explorer" do
  version "2.1"
  sha256 :no_check

  url "https://www.kafkatool.com/download2/offsetexplorer.dmg"
  name "Offset Explorer"
  name "Kafka Tool"
  desc "GUI for managing and using Apache Kafka clusters"
  homepage "https://www.kafkatool.com/index.html"

  livecheck do
    url "https://www.kafkatool.com/download.html"
    strategy :page_match
    regex(/Offset\s*Explorer\s*(\d+(?:\.\d+)*)/i)
  end

  app "Offset Explorer #{version.major}.app"

  zap trash: "~/.kafkatool#{version.major}"
end
