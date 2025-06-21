cask "font-simple-icons" do
  version "15.2.0"
  sha256 "37287fca9d93da6735bff1193c59d39bd2cc3f9e151fc9daec5edafaa22574dc"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  no_autobump! because: :requires_manual_review

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
