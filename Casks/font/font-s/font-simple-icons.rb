cask "font-simple-icons" do
  version "16.27.0"
  sha256 "bad70f05428acb0a2f9283f577a5295d6f0ca2add6440d13b6914b087c953a7f"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
