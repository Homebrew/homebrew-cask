cask "font-biz-udpgothic" do
  version "1.051"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bizudpgothic"
  name "BIZ UDPGothic"
  homepage "https://fonts.google.com/specimen/BIZ+UDPGothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BIZ UDPGothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BIZUDPGothic-Bold.ttf"
  font "BIZUDPGothic-Regular.ttf"

  # No zap stanza required
end
