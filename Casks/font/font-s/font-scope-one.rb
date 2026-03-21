cask "font-scope-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/scopeone/ScopeOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Scope One"
  homepage "https://fonts.google.com/specimen/Scope+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Scope One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ScopeOne-Regular.ttf"

  # No zap stanza required
end
