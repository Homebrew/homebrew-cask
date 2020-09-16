cask "auryo" do
  version "2.5.4"
  sha256 "481884ddfad1c617e7cbe148d6d0cb9bcd0570d5f78bde8b1aeba36a2921057c"

  # github.com/Superjo149/auryo/ was verified as official when first introduced to the cask
  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg"
  appcast "https://github.com/Superjo149/auryo/releases.atom"
  name "Auryo"
  desc "Unofficial desktop app for Soundcloud"
  homepage "https://auryo.com/"

  app "Auryo.app"
end
