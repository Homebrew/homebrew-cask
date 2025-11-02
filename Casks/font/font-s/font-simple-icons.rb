cask "font-simple-icons" do
  version "15.19.0"
  sha256 "a1edbf7b9705fe9b75bf589fe1bf0bb515168936915d47eef52e55dac6048616"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip",
      verified: "github.com/simple-icons/simple-icons-font/"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
