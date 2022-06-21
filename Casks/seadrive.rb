cask "seadrive" do
  version "2.0.22"
  sha256 "d42ff60925ce8ded9ae7d7c07e88c21f4702828f5cb0b438c5a40ac1f8f1b904"

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
