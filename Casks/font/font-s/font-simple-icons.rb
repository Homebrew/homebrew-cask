cask "font-simple-icons" do
  version "15.12.0"
  sha256 "d73fcfae89ec4b7eb22b083a79adf7622017405a773a07ff4619c33c4c2cef1f"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
