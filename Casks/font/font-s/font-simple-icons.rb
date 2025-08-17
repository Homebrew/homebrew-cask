cask "font-simple-icons" do
  version "15.11.0"
  sha256 "925c343f96d0c44e5072e3e9d5ac6602edc952d28be7132f94db1b694cb87367"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
