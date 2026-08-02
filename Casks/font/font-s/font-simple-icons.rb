cask "font-simple-icons" do
  version "16.28.0"
  sha256 "c30b7de8bc8605e8ae40ab0df54918a8099cf00057deb6e16534f291037631f1"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
