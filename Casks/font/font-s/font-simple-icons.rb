cask "font-simple-icons" do
  version "15.1.0"
  sha256 "d1c656f00d2a5e8005b3d5605a2fd770714114292eead406de470406d243832d"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  no_autobump! because: :requires_manual_review

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
