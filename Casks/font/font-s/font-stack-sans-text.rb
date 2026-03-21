cask "font-stack-sans-text" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksanstext/StackSansText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stack Sans Text"
  homepage "https://fonts.google.com/specimen/Stack+Sans+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stack Sans Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StackSansText[wght].ttf"

  # No zap stanza required
end
