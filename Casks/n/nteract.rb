cask "nteract" do
  on_arm do
    version "1.4.1,202603102148"
    sha256 "04ac771e428c08926a0f53845f52c8e2414b3504d58849b5420f36a5100b8522"

    url "https://github.com/nteract/desktop/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/nteract-stable-darwin-arm64.dmg"

    livecheck do
      url "https://github.com/nteract/desktop/releases/download/stable-latest/latest.json"
      regex(/v?(\d+(?:\.\d+)+)(?:[._-]stable)?[._-](\d+(?:\.\d+)*)/i)
      strategy :json do |json, regex|
        match = json["version"]&.match(regex)
        next unless match

        match[2].present? ? "#{match[1]},#{match[2]}" : match[1]
      end
    end

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
  on_intel do
    version "0.28.0"
    sha256 "de65abe5ed76489217a9c29bcc177aa5b2ee2f0657cd017301af33280ca8a737"

    url "https://github.com/nteract/archived-desktop-app/releases/download/v#{version}/nteract-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end

    deprecate! date: "2026-03-07", because: :discontinued

    auto_updates true

    uninstall delete: "/usr/local/bin/nteract"

    zap trash: [
      "~/Library/Application Support/Caches/nteract-updater",
      "~/Library/Application Support/nteract",
      "~/Library/Logs/nteract",
      "~/Library/Preferences/io.nteract.nteract.plist",
      "~/Library/Saved Application State/io.nteract.nteract.savedState",
    ]
  end

  name "nteract"
  desc "Interactive computing suite"
  homepage "https://github.com/nteract/desktop"

  app "nteract.app"
end
