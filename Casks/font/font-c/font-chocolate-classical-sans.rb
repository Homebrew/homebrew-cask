cask "font-chocolate-classical-sans" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chocolateclassicalsans/ChocolateClassicalSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chocolate Classical Sans"
  homepage "https://fonts.google.com/specimen/Chocolate+Classical+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chocolate Classical Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChocolateClassicalSans-Regular.ttf"

  # No zap stanza required
end
