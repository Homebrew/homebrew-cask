cask "berrycast" do
  version "0.36.8"
  sha256 "f70b7c18157b05d505ef98d5bca3122cff30043546258ea5194b4b44b71ebaf4"

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
