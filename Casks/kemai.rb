cask "kemai" do
  version "0.10.0"
  sha256 "58d53bb04250a2313070a2238bf9ee2451201cf57447ab80fa600aa8e91ae507"

  url "https://github.com/AlexandrePTJ/kemai/releases/download/#{version}/Kemai-#{version}-NoUpdate.dmg"
  name "Kemai"
  desc "Kimai desktop client"
  homepage "https://github.com/AlexandrePTJ/kemai"

  app "Kemai.app"
end
