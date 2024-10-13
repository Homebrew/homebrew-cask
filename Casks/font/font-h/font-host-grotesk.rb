cask "font-host-grotesk" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/hostgrotesk"
  name "Host Grotesk"
  homepage "https://github.com/Element-Type/HostGrotesk"

  font "HostGrotesk-Italic[wght].ttf"
  font "HostGrotesk[wght].ttf"

  # No zap stanza required
end
