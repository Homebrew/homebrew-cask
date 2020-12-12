cask "fastonosql" do
  version "2.6.0"
  sha256 "13755c0f39d65d2d8a729726cdb84e4040d1e488296aa2d57ab5b0b2c272354a"

  url "https://fastonosql.com/downloads_pro/macosx/fastonosql_pro-#{version}-x86_64.dmg"
  appcast "https://github.com/fastogt/fastonosql/releases.atom"
  name "FastoNoSQL"
  homepage "https://www.fastonosql.com/"

  app "FastoNoSQL.app"
end
