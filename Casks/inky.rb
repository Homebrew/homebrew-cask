cask "inky" do
  version "0.11.0"
  sha256 "eb6c25173b19e0550f48791a498ab1ce77cb0f49a6462cc357fee0c1d924ff2b"

  # github.com/inkle/inky/ was verified as official when first introduced to the cask
  url "https://github.com/inkle/inky/releases/download/#{version}/Inky_mac.dmg"
  appcast "https://github.com/inkle/inky/releases.atom"
  name "Inky"
  desc "Editor for ink: inkle's narrative scripting language"
  homepage "https://www.inklestudios.com/ink/"

  app "Inky.app"
end
