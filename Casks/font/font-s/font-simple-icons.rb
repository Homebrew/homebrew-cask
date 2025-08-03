cask "font-simple-icons" do
  version "15.9.0"
  sha256 "b341b24f610fcdddd2a56569e5574732bdbc8bab805b3f701653c1595a13e8b0"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
