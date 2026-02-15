cask "font-simple-icons" do
  version "16.9.0"
  sha256 "15183eae0f36ce28b49714db9586c2a8ea87bc73a7230d0d1d06c2e4bdb60e22"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
