cask "seadrive" do
  version "2.0.17"
  sha256 "7816d0f389f7ad343237a935f79b8ecb15205088df75dacd2784dde110abf972"

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
