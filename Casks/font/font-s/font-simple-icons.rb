cask "font-simple-icons" do
  version "15.7.0"
  sha256 "591fc2f6a8b9b5a6a1e472c7c7e1c3c8520a1b1747945eafbc26acb3c1983b10"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
