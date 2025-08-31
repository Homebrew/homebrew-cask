cask "font-simple-icons" do
  version "15.13.0"
  sha256 "277d3aca0b5bb1040db5cc146c72cb500c00b991e5104235e8409f997ce15610"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
