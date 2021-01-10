cask "seadrive" do
  version "2.0.10"
  sha256 "d9f54d78111c2e8dfd7e82a10c9b07bcd0317bceddb2b79e6a76973321cfb029"

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
