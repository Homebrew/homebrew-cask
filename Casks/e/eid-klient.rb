cask "eid-klient" do
  version "5.0"
  sha256 "8c294f7b3a18931ace89e7d66c1e6f4461494f4f509d4c0aa06bd6a07c183eaa"

  url "https://eidas.minv.sk/downloadservice/eidklient/mac/eID_klient.dmg#v=#{version}",
      verified: "eidas.minv.sk/downloadservice/eidklient/mac/"
  name "Aplikacia pre eID"
  name "eID Klient"
  name "Electronic identity card software for Slovakia"
  name "eID Slovakia"
  desc "Application for log in by Slovak eID"
  homepage "https://www.slovensko.sk/sk/titulna-stranka"

  livecheck do
    url "https://eidas.minv.sk/download/files/mac/eID_klient_release_notes.txt"
    regex(/verzia\s*v?(\d+(?:\.\d+)+)[\n a-z]/i)
  end

  auto_updates true

  app "eID_klient.app"

  uninstall quit:   "sk.minv.eID_klient",
            signal: [
              ["KILL", "sk.minv.eID_klient"],
            ]

  zap trash: [
    "~/Library/Application Support/eID_klient",
    "~/Library/LaunchAgents/com.eid_client.plist",
    "~/Library/Saved Application State/sk.eid.CTKApp.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
