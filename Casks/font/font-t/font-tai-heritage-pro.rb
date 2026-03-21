cask "font-tai-heritage-pro" do
  version "2.600"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/taiheritagepro"
  name "Tai Heritage Pro"
  homepage "https://fonts.google.com/specimen/Tai+Heritage+Pro"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tai Heritage Pro",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TaiHeritagePro-Bold.ttf"
  font "TaiHeritagePro-Regular.ttf"

  # No zap stanza required
end
