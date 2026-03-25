cask "nteract" do
  version "2.0.2,202603251855"
  sha256 "8ffe16cdbba232d0e4f936e50f88b7e43964671f24ca853d5e2151de31c9e835"

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

  app "nteract.app"

  uninstall delete: [
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
