cask "seadrive" do
  version "2.0.12"
  sha256 "3b6591e2b6fc3b8a45fc384e57965c2db1c65b1f1be014d49d6801ee23de293f"

  url "https://download.seadrive.org/seadrive-#{version}.dmg",
      verified: "download.seadrive.org/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    strategy :page_match
    regex(%r{href=.*?/seadrive-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Seadrive.app"
end
