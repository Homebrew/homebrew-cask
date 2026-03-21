cask "font-benchnine" do
  version "1"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/benchnine"
  name "BenchNine"
  homepage "https://fonts.google.com/specimen/BenchNine"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BenchNine",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BenchNine-Bold.ttf"
  font "BenchNine-Light.ttf"
  font "BenchNine-Regular.ttf"

  # No zap stanza required
end
