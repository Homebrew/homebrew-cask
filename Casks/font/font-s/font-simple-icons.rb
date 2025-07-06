cask "font-simple-icons" do
  version "15.5.0"
  sha256 "58f5112b4e905e3949b7184708afe29cedc726ee32fa4c711e9672ad23a7d51f"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
