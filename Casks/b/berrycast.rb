cask "berrycast" do
  version "0.39.3"
  sha256 "ee06cad17600abb9d1cfc1b220b053396d30f364dc9893d4f1de84f6886fb0c6"

  url "https://media.berrycast.app/desktop-installer/Berrycast-#{version}-latest.dmg",
      verified: "media.berrycast.app/"
  name "Berrycast"
  desc "Screen recorder"
  homepage "https://www.berrycast.com/"

  livecheck do
    url "https://media.berrycast.app/desktop-installer/v2/latest-mac.yml"
    regex(/Berrycast[._-]?v?(\d+(?:\.\d+)+)[._-]latest\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Berrycast.app"

  uninstall quit:       [
              "com.openmindt.berrycast",
              "com.openmindt.berrycast.helper",
              "com.openmindt.berrycast.helper.GPU",
              "com.openmindt.berrycast.helper.Plugin",
              "com.openmindt.berrycast.helper.Renderer",
            ],
            login_item: "Berrycast"

  zap trash: [
    "~/Library/Application Support/berrycast-desktop",
    "~/Library/Logs/Berrycast",
    "~/Library/Logs/berrycast-desktop",
    "~/Library/Preferences/com.openmindt.berrycast.plist",
    "~/Library/Saved Application State/com.openmindt.berrycast.savedState",
  ]
end
