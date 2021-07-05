cask "seafile-client" do
  version "8.0.2"
  sha256 "fbdb3f14e46b28c9a7865dbbc0cc559fba388a1e28021a85bc6ab4a0ebea59a5"

  url "https://download.seadrive.org/seafile-client-#{version}.dmg",
      verified: "seadrive.org/"
  name "Seafile Client"
  desc "File syncing client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seafile[._-]client[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Seafile Client.app"
end
