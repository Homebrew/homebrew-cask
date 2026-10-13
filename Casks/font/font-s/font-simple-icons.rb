cask "font-simple-icons" do
  version "16.35.0"
  sha256 "d9284cc4f928f4b7c29dce097ff021f6579dc5ea320f36676d474b1398e23112"

  url "https://github.com/simple-icons/simple-icons-font/releases/download/#{version}/simple-icons-font-#{version}.zip"
  name "Simple Icons"
  homepage "https://simpleicons.org/"

  font "font/SimpleIcons-Fit.otf"
  font "font/SimpleIcons.otf"

  # No zap stanza required
end
