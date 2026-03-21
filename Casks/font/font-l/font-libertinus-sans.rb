cask "font-libertinus-sans" do
  version "7.051"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/libertinussans"
  name "Libertinus Sans"
  homepage "https://fonts.google.com/specimen/Libertinus+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libertinus Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibertinusSans-Bold.ttf"
  font "LibertinusSans-Italic.ttf"
  font "LibertinusSans-Regular.ttf"

  # No zap stanza required
end
