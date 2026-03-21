cask "font-stack-sans-notch" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stacksansnotch/StackSansNotch%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stack Sans Notch"
  homepage "https://fonts.google.com/specimen/Stack+Sans+Notch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stack Sans Notch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StackSansNotch[wght].ttf"

  # No zap stanza required
end
