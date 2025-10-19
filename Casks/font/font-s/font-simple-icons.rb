cask "font-simple-icons" do
  version "15.17.0"
  sha256 "58c79f0a4e0aae21fe435534e21cac7964bbe7de81f1ad2daa1dc300d67172b7"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
