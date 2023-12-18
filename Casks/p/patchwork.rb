cask "patchwork" do
  version "3.18.1"
  sha256 "2436dc487afb45264e81c5b1d65cb4acc7ec8d772ce2af2132122f86ca6d887c"

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  name "Patchwork"
  desc "Decentralized messaging and sharing app using Secure Scuttlebutt"
  homepage "https://github.com/ssbc/patchwork"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Patchwork.app"
end
