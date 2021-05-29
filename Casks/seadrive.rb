cask "seadrive" do
  version "2.0.14"
  sha256 "f418dc4f849dd491151577530fce81e09c789e517b57c49de1f62751df1e053d"

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
