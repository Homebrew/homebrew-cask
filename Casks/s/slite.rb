cask "slite" do
  arch arm: "arm64", intel: "x64"

  version "1.2.20,231130v39ddq1hx"
  sha256 arm:   "1c028898ff2487109aea00c6984bf3fc60b5473cd6feaaf3c9f637a7c03af2ff",
         intel: "4c9d74c5d9efc214aab28cd00e51464e093bcf9b370a6b9b60eb9dced70ebd04"

  url "https://download.todesktop.com/20062929x31pwfi/Slite%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}-mac.zip",
      verified: "download.todesktop.com/20062929x31pwfi/"
  name "Slite"
  desc "Team communication and collaboration software"
  homepage "https://slite.com/"

  livecheck do
    url "https://download.todesktop.com/20062929x31pwfi/latest-mac.yml"
    regex(/Build[ ._-]([^-]+)[._-]/i)
    strategy :electron_builder do |item, regex|
      build = item["files"].first["url"][regex, 1]
      next if build.blank?

      "#{item["version"]},#{build}"
    end
  end

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
