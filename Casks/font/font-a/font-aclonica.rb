cask "font-aclonica" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/aclonica/Aclonica-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Aclonica"
  homepage "https://fonts.google.com/specimen/Aclonica"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Aclonica",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Aclonica-Regular.ttf"

  # No zap stanza required
end
