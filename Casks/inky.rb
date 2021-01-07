cask "inky" do
  version "0.11.0"
  sha256 "eb6c25173b19e0550f48791a498ab1ce77cb0f49a6462cc357fee0c1d924ff2b"

  url "https://github.com/inkle/inky/releases/download/#{version}/Inky_mac.dmg",
      verified: "github.com/inkle/inky/"
  name "Inky"
  desc "Editor for ink: inkle's narrative scripting language"
  homepage "https://www.inklestudios.com/ink/"

  livecheck do
    url :url
    strategy :git
  end

  app "Inky.app"
end
