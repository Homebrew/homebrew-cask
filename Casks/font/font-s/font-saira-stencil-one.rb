cask "font-saira-stencil-one" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sairastencilone/SairaStencilOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Saira Stencil One"
  homepage "https://fonts.google.com/specimen/Saira+Stencil+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Saira Stencil One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SairaStencilOne-Regular.ttf"

  # No zap stanza required
end
