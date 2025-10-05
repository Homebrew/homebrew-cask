cask "font-simple-icons" do
  version "15.16.1"
  sha256 "5842cc5f1d08e21c76518f7cba26aa392af41e84fecd8d2507048525b250d311"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
