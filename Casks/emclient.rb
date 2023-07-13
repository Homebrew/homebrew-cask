cask "emclient" do
  version "9.2.2041"
  sha256 "be5f98aef676a642b36ba829a2a3e19b1d40521bb9f193efb7a2d112726a63b5"

  url "https://cdn-dist.emclient.com/dist/v#{version}_Mac/setup.pkg"
  name "eM Client"
  desc "Email client"
  homepage "https://www.emclient.com/"

  livecheck do
    url "https://www.emclient.com/dist/latest/setup.pkg"
    strategy :header_match do |headers|
      headers["location"][/v?(\d+(?:\.\d+)+)_Mac/i, 1]
    end
  end

  auto_updates true

  pkg "setup.pkg"

  uninstall delete:  "/Applications/eM Client.app",
            pkgutil: "com.emclient.mail.client.pkg"

  zap trash: [
    "~/Library/Caches/com.emclient.mail.client",
    "~/Library/Preferences/com.emclient.mail.client.plist",
    "~/Library/Preferences/com.emclient.mail.repair.plist",
    "~/Library/Preferences/com.emclient.mail.shared.plist",
    "~/Library/Saved Application State/com.emclient.mail.client.savedState",
  ]
end
