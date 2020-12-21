cask "air-connect" do
  version "2.0.1,26526"
  sha256 "e8f93fbcb626241f9cbe0f934cf9dada319f3f80399ec83558aa696988575b2a"

  url "https://www.avatron.com/updates/software/airconnect_mac/acmac#{version.before_comma.no_dots}.zip"
  name "Air Connect"
  homepage "https://avatron.com/get-air-connect/"

  livecheck do
    url "https://avatron.com/updates/software/airconnect_mac/appcast.xml"
    strategy :sparkle
  end

  app "Air Connect.app"
end
