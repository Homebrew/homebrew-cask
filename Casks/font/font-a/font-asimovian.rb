cask "font-asimovian" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/asimovian/Asimovian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Asimovian"
  homepage "https://fonts.google.com/specimen/Asimovian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Asimovian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Asimovian-Regular.ttf"

  # No zap stanza required
end
