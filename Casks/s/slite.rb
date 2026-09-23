cask "slite" do
  arch arm: "arm64", intel: "x64"

  version "1.6.2,2609235g77wzgpj"
  sha256 arm:   "d7815f2bfd0c048c8bae15aebc0d1c6fdd1a31fc70f68fa21ef34834fe2005c9",
         intel: "67cbcd371151d7593006fe0068a78c004a683564845129ac9a67f3cd08582d0a"

  url "https://download.todesktop.com/20062929x31pwfi/Slite%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.todesktop.com/20062929x31pwfi/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{yaml["version"]},#{match[1]}"
      end
    end
  end

  depends_on macos: :monterey

  app "Slite.app"

  zap trash: [
    "~/Library/Application Support/Slite",
    "~/Library/Caches/com.slite.desktop",
    "~/Library/Caches/com.slite.desktop.ShipIt",
    "~/Library/Preferences/com.slite.desktop.helper.plist",
    "~/Library/Preferences/com.slite.desktop.plist",
    "~/Library/Saved Application State/com.slite.desktop.savedState",
  ]
end
