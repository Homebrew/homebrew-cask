cask "font-simple-icons" do
  version "16.4.0"
  sha256 "afbf83acd9c9d387b7777b91ef0880dcf7591b7289263949b770174ed7224087"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
