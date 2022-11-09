cask "seadrive" do
  version "2.0.24"
  sha256 "bbc6aa3cc047d1d7a0f7c37ad90626aed62b29dd1ac1167143f5e520e1056450"

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
