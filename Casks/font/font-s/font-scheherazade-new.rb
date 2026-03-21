cask "font-scheherazade-new" do
  version "4.400"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/scheherazadenew"
  name "Scheherazade New"
  homepage "https://fonts.google.com/specimen/Scheherazade+New"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Scheherazade New",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ScheherazadeNew-Bold.ttf"
  font "ScheherazadeNew-Medium.ttf"
  font "ScheherazadeNew-Regular.ttf"
  font "ScheherazadeNew-SemiBold.ttf"

  # No zap stanza required
end
