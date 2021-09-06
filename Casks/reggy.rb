cask "reggy" do
  version "1.3"
  sha256 "5a4d72158bc524ab2f21c6cfad7b703f413707d9d078ec1923c268b110ff8dda"

  url "https://github.com/downloads/samsouder/reggy/Reggy_v#{version}.tbz",
      verified: "github.com/downloads/samsouder/reggy/"
  name "Reggy"
  desc "Interactive regular expression validator and tester"
  homepage "http://reggyapp.com/"

  livecheck do
    url "http://reggyapp.com/appcast.xml"
    strategy :sparkle
  end

  app "Reggy.app"
end
