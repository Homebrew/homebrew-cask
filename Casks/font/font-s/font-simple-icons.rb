cask "font-simple-icons" do
  version "16.26.0"
  sha256 "d8a1eff02b9abcc730e1abf95f75b443ea9bd3293ef40ca11b389692370fd65e"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
