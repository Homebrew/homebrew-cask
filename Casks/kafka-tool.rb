cask "kafka-tool" do
  version "2.0.8"
  sha256 "fe88a7778cbf78aa397f20c962c21779a78c237307a9627ea65fd42db266a779"

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
