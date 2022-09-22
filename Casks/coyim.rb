cask "coyim" do
  version "0.4.1"
  sha256 "447d1c48d18ea6485ce4020652220ce9af9ce6a08b4bdebb096aca48b7a8c718"

  url "https://github.com/coyim/coyim/releases/download/v#{version}/coyim.dmg",
      verified: "github.com/coyim/coyim/"
  name "CoyIM"
  desc "Secure chat client"
  homepage "https://coy.im"

  app "CoyIM.app"
end
