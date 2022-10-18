cask "berrycast" do
  version "0.36.5"
  sha256 "90ce0cf6efed9ab96fab54e617d7a248f8fee26be009fa10d11ce972cb721ae5"

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
