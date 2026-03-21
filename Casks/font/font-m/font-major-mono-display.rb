cask "font-major-mono-display" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/majormonodisplay/MajorMonoDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Major Mono Display"
  homepage "https://fonts.google.com/specimen/Major+Mono+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Major Mono Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MajorMonoDisplay-Regular.ttf"

  # No zap stanza required
end
