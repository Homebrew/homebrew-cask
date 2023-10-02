cask "berrycast" do
  version "0.38.0"
  sha256 "a6d6de79a17acf5c5160838ac8623622fc418bf32eaf1ad6a5a0d2e7bae65a2c"

  url "https://media.berrycast.app/desktop-installer/Berrycast-#{version}-latest.dmg",
      verified: "media.berrycast.app/"
  name "Berrycast"
  desc "Screen recorder"
  homepage "https://www.berrycast.com/"

  livecheck do
    url "https://media.berrycast.app/desktop-installer/v2/latest-mac.yml"
    regex(/Berrycast[._-]?v?(\d+(?:\.\d+)+)[._-]latest\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Berrycast.app"

  uninstall login_item: "Berrycast",
            quit:       [
              "com.openmindt.berrycast",
              "com.openmindt.berrycast.helper",
              "com.openmindt.berrycast.helper.GPU",
              "com.openmindt.berrycast.helper.Plugin",
              "com.openmindt.berrycast.helper.Renderer",
            ]

  zap trash: [
    "~/Library/Application Support/berrycast-desktop",
    "~/Library/Logs/Berrycast",
    "~/Library/Logs/berrycast-desktop",
    "~/Library/Preferences/com.openmindt.berrycast.plist",
    "~/Library/Saved Application State/com.openmindt.berrycast.savedState",
  ]
end
