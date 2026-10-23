cask "emclient" do
  version "11.0.1267"
  sha256 "0788124675d5ea44484e1052ad1e4388049416f83fe1373feaba41433c690360"

  url "https://cdn-dist.emclient.com/dist/v#{version}_Mac/setup.pkg"
  name "eM Client"
  desc "Email client"
  homepage "https://www.emclient.com/"

  livecheck do
    url "https://www.emclient.com/dist/latest/setup.pkg"
    regex(/v?(\d+(?:\.\d+)+)[._-]Mac/i)
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: "emclient@beta"
  depends_on macos: :sonoma

  pkg "setup.pkg"

  uninstall pkgutil: "com.emclient.mail.client.pkg",
            delete:  "/Applications/eM Client.app"

  zap trash: [
    "~/Library/Application Scripts/com.emclient.mail.client.share",
    "~/Library/Caches/com.emclient.mail.client",
    "~/Library/Containers/com.emclient.mail.client.share",
    "~/Library/Preferences/com.emclient.mail.*.plist",
    "~/Library/Saved Application State/com.emclient.mail.client.savedState",
  ]
end
