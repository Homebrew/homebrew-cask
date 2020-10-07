cask "stella" do
  version "6.3"
  sha256 "888d518bbe9f1ce2e40c6e15a6d1fbb7f409c31cae479df7f1dcb184d3f10017"

  # github.com/stella-emu/stella/ was verified as official when first introduced to the cask
  url "https://github.com/stella-emu/stella/releases/download/#{version}/Stella-#{version}-macos.dmg"
  appcast "https://github.com/stella-emu/stella/releases.atom"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  app "Stella.app"
end
