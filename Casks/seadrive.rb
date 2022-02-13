cask "seadrive" do
  version "2.0.18"
  sha256 "850a7a732dc50ea8683bda2502d43143a3d8c2fef5c4d9f8f3ced0e26890b6b1"

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
