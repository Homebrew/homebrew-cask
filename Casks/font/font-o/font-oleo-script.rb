cask "font-oleo-script" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/oleoscript"
  name "Oleo Script"
  homepage "https://fonts.google.com/specimen/Oleo+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Oleo Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OleoScript-Bold.ttf"
  font "OleoScript-Regular.ttf"

  # No zap stanza required
end
