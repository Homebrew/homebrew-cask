cask "font-biz-udpmincho" do
  version "1.06"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bizudpmincho"
  name "BIZ UDPMincho"
  homepage "https://fonts.google.com/specimen/BIZ+UDPMincho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BIZ UDPMincho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BIZUDPMincho-Bold.ttf"
  font "BIZUDPMincho-Regular.ttf"

  # No zap stanza required
end
