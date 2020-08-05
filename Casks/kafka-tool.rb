cask "kafka-tool" do
  version "2.0.7"
  sha256 "8f4a008a4d3ce83e274d15796474770165961c6b66b59503e03ccd8c6b93ebbd"

  url "https://www.kafkatool.com/download2/kafkatool.dmg"
  appcast "https://www.kafkatool.com/download.html"
  name "Kafka Tool"
  homepage "https://www.kafkatool.com/index.html"

  installer script: {
    executable: "Kafka Tool #{version.major} Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: "/Applications/Kafka Tool.app"

  zap trash: "~/.kafkatool#{version.major}"
end
