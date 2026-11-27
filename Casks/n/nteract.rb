cask "nteract" do
  version "2.11.0,202611261702"
  sha256 "c71b02f3df97cfa75e5337a16c264e398430a89785e95981a13c3688225f4ece"

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

      match.values_at(1, 2).compact_blank.join(",")
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
    "~/Library/Caches/nteract",
    "~/Library/Caches/org.nteract.desktop",
    "~/Library/WebKit/org.nteract.desktop",
  ]
end
