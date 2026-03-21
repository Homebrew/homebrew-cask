cask "font-host-grotesk" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/hostgrotesk"
  name "Host Grotesk"
  homepage "https://fonts.google.com/specimen/Host+Grotesk"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Host Grotesk",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HostGrotesk-Italic[wght].ttf"
  font "HostGrotesk[wght].ttf"

  # No zap stanza required
end
