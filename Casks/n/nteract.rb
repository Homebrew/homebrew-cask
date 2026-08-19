cask "nteract" do
  version "2.7.1,202608192148"
  sha256 "eb397ec14669e36d3cb7b4da8731e47b14575d27c5d9e655a8d65459341d8c61"

  url "https://github.com/nteract/desktop/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/nteract-stable-darwin-arm64.dmg"
  name "nteract"
  desc "Interactive computing suite"
  homepage "https://github.com/nteract/desktop"

  livecheck do
    url "https://github.com/nteract/desktop/releases/download/stable-latest/latest.json"
    regex(/v?(\d+(?:\.\d+)+)(?:[._-]stable)?[._-](\d+(?:\.\d+)*)/i)
    strategy :json do |json, regex|
      match = json["version"]&.match(regex)
      next unless match

      match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
    end
  end

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "nteract.app"

  uninstall launchctl: "io.nteract.runtimed",
            delete:    [
              "/usr/local/bin/nb",
              "/usr/local/bin/runt",
            ]

  zap trash: [
    "~/Library/Application Support/nteract",
    "~/Library/Application Support/org.nteract.desktop",
    "~/Library/Caches/org.nteract.desktop",
    "~/Library/WebKit/org.nteract.desktop",
  ]
end
