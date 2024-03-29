cask "auryo" do
  version "2.5.4"
  sha256 "481884ddfad1c617e7cbe148d6d0cb9bcd0570d5f78bde8b1aeba36a2921057c"

  url "https://github.com/Superjo149/auryo/releases/download/v#{version}/Auryo-#{version}.dmg",
      verified: "github.com/Superjo149/auryo/"
  name "Auryo"
  desc "Unofficial desktop app for Soundcloud"
  homepage "https://auryo.com/"

  deprecate! date: "2021-02-10", because: :discontinued

  app "Auryo.app"
end
