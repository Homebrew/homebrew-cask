cask "nteract" do
  version "2.8.0,202610061629"
  sha256 "776b7ce0ea1a99d6a012c3ae728bdc0b5d1499860a098a261d73bc256a9812af"

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

  depends_on arch: :arm64
  depends_on :macos

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
