cask "seafile-client" do
  version "8.0.2"
  sha256 "fbdb3f14e46b28c9a7865dbbc0cc559fba388a1e28021a85bc6ab4a0ebea59a5"

  url "https://download.seadrive.org/seafile-client-#{version}.dmg",
      verified: "seadrive.org/"
  name "Seafile Client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    strategy :page_match
    regex(%r{href=.*?/seafile-client-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Seafile Client.app"
end
