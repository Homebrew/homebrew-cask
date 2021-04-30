cask "seadrive" do
  version "2.0.13"
  sha256 "1228efb62f6ee501511b0186ce12bef15b35250e5c295e9180a9ec4c12d4d7e1"

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
