cask "seadrive" do
  version "2.0.15"
  sha256 "b8fcd6dff8b42a3248533c4f07cb8c4b507c5ba628912e771a10b288d067a5d7"

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

  app "Seadrive.app"
end
