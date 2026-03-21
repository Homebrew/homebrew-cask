cask "font-pt-sans-caption" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ptsanscaption"
  name "PT Sans Caption"
  homepage "https://fonts.google.com/specimen/PT+Sans+Caption"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "PT Sans Caption",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PT_Sans-Caption-Web-Bold.ttf"
  font "PT_Sans-Caption-Web-Regular.ttf"

  # No zap stanza required
end
