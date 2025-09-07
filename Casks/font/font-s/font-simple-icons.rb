cask "font-simple-icons" do
  version "15.14.0"
  sha256 "00c897ea8779515a2572c831ef3e035189f11d8abc112b451e7aee2bcfb26f88"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
