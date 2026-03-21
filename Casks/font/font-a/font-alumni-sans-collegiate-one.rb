cask "font-alumni-sans-collegiate-one" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/alumnisanscollegiateone"
  name "Alumni Sans Collegiate One"
  homepage "https://fonts.google.com/specimen/Alumni+Sans+Collegiate+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alumni Sans Collegiate One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlumniSansCollegiateOne-Italic.ttf"
  font "AlumniSansCollegiateOne-Regular.ttf"

  # No zap stanza required
end
