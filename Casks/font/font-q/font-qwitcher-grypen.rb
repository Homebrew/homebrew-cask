cask "font-qwitcher-grypen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/qwitchergrypen"
  name "Qwitcher Grypen"
  homepage "https://fonts.google.com/specimen/Qwitcher+Grypen"

  font "QwitcherGrypen-Bold.ttf"
  font "QwitcherGrypen-Regular.ttf"

  # No zap stanza required
end
