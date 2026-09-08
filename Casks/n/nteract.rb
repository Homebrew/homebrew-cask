cask "nteract" do
  version "2.7.6,202608280705"
  sha256 "355d19221eb5de3e66b2cd872d4ea06836d8bff4058ad49d7f780ab1e2fe29dc"

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
