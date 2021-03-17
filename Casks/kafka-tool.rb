cask "kafka-tool" do
  version "2.0.9"
  sha256 :no_check

  url "https://www.kafkatool.com/download2/kafkatool.dmg"
  appcast "https://www.kafkatool.com/download.html"
  name "Kafka Tool"
  homepage "https://www.kafkatool.com/index.html"

  installer script: {
    executable: "Kafka Tool #{version.major}.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: "/Applications/Kafka Tool.app"

  zap trash: "~/.kafkatool#{version.major}"
end
