cask "seadrive" do
  version "2.0.20"
  sha256 "cd6c1c8055312f34549e2575e807985c3ab6e1577558d2772804e9178af5b990"

  url "https://download.seadrive.org/seadrive-#{version}.dmg",
      verified: "download.seadrive.org/"
  name "Seadrive"
  desc "Manual for Seafile server"
  homepage "https://www.seafile.com/en/home/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seadrive[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "SeaDrive.app"
end
