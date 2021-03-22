cask "fastonosql" do
  version "2.6.0"
  sha256 "13755c0f39d65d2d8a729726cdb84e4040d1e488296aa2d57ab5b0b2c272354a"

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  name "FastoNoSQL"
  homepage "https://www.fastonosql.com/"

  livecheck do
    url "https://fastonosql.com/anonim_users_downloads"
    strategy :page_match
    regex(/Mac\s*OS\s*X\s+(\d+(?:\.\d+)*)\s+Installer/i)
  end

  app "FastoNoSQL.app"
end
