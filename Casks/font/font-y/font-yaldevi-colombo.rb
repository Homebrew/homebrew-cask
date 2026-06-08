cask "font-yaldevi-colombo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/yaldevicolombo"
  name "Yaldevi Colombo"
  homepage "https://fonts.google.com/specimen/Yaldevi"

  font "YaldeviColombo-Bold.ttf"
  font "YaldeviColombo-ExtraLight.ttf"
  font "YaldeviColombo-Light.ttf"
  font "YaldeviColombo-Medium.ttf"
  font "YaldeviColombo-Regular.ttf"
  font "YaldeviColombo-SemiBold.ttf"

  # No zap stanza required
end
