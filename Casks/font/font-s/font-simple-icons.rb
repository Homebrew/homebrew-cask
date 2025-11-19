cask "font-simple-icons" do
  version "15.21.0"
  sha256 "90e5b099504cbfce7fa3bbb923092a6e7f34d09b69e98da5a512405ac601c773"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
