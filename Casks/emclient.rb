cask "emclient" do
  version "8.2.1478"
  sha256 "af2a094689d74baa78005f02cacf051fceca89854e501141765e4d2896579330"

  url "https://cdn-dist.emclient.com/dist/v#{version}_Mac/setup.pkg"
  name "eM Client"
  desc "Email client"
  homepage "https://www.emclient.com/"

  livecheck do
    url "https://www.emclient.com/dist/latest/setup.pkg"
    strategy :header_match do |headers|
      headers["location"][/v(\d+(?:\.\d+)*)_Mac/i, 1]
    end
  end

  auto_updates true

  pkg "setup.pkg"

  uninstall pkgutil: "com.emclient.mail.client.pkg"

  zap trash: [
    "~/Library/Caches/com.emclient.mail.client",
    "~/Library/Preferences/com.emclient.mail.client.plist",
    "~/Library/Preferences/com.emclient.mail.repair.plist",
    "~/Library/Preferences/com.emclient.mail.shared.plist",
    "~/Library/Saved Application State/com.emclient.mail.client.savedState",
  ]
end
