cask "font-xanh-mono" do
  version "3.101"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/xanhmono"
  name "Xanh Mono"
  homepage "https://fonts.google.com/specimen/Xanh+Mono"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Xanh Mono",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "XanhMono-Italic.ttf"
  font "XanhMono-Regular.ttf"

  # No zap stanza required
end
