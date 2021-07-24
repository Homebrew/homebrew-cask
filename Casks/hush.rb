# typed: false
# frozen_string_literal: true

cask "hush" do
  version "1.0"
  sha256 "ed5050e0806d633a717807f90e28acf4b6c2ebcd789b68d3b1c4d461aba0dfc7"

  url "https://github.com/oblador/hush/releases/download/v#{version}/Hush.dmg"
  name "Hush"
  desc "Block nags to accept cookies and privacy invasive tracking in Safari"
  homepage "https://github.com/oblador/hush"

  app "Hush.app"

  zap trash: [
    "~/Library/Application Scripts/se.oblador.Hush",
    "~/Library/Application Scripts/se.oblador.Hush.ContentBlocker",
    "~/Library/Containers/se.oblador.Hush",
    "~/Library/Containers/se.oblador.Hush.ContentBlocker",
  ]
end
