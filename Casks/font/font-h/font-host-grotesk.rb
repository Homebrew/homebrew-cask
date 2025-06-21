cask "font-host-grotesk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hostgrotesk"
  name "Host Grotesk"
  homepage "https://fonts.google.com/specimen/Host+Grotesk"

  font "HostGrotesk-Italic[wght].ttf"
  font "HostGrotesk[wght].ttf"

  # No zap stanza required
end
