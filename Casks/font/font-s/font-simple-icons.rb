cask "font-simple-icons" do
  version "16.18.0"
  sha256 "5768ba5399c9429bd65cd91c7bfd24ba0e90e5dbb1d06e1878fac7b054d4884e"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
