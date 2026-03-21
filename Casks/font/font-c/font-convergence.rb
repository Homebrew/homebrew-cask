cask "font-convergence" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/convergence/Convergence-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Convergence"
  homepage "https://fonts.google.com/specimen/Convergence"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Convergence",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Convergence-Regular.ttf"

  # No zap stanza required
end
