cask "seafile-client" do
  version "9.0.11"
  sha256 "f0a45015eee313a5245b5a8f29d3509df8b884168a38e90bf4248091fc0bd14a"

  url "https://download.seadrive.org/seafile-client-#{version}.dmg",
      verified: "seadrive.org/"
  name "Seafile Client"
  desc "File syncing client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seafile[._-]client[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :mojave"

  app "Seafile Client.app"

  zap trash: [
    "~/Library/Application Scripts/com.seafile.seafile-client.findersync",
    "~/Library/Containers/com.seafile.seafile-client.findersync",
    "~/Library/Group Containers/com.seafile.seafile-client.findersync",
    "~/Library/Preferences/com.seafile.seafile-client.plist",
    "~/Library/Saved Application State/com.seafile.seafile-client.savedState",
  ]
end
