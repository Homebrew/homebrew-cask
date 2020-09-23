cask "browserosaurus" do
  version "12.2.1"
  sha256 "6a0c6368c1f0ac51501001770b9563549404c3450d36464934e79397b7ec0956"

  # github.com/will-stone/browserosaurus/ was verified as official when first introduced to the cask
  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://will-stone.github.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
