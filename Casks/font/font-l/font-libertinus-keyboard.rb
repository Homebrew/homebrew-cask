cask "font-libertinus-keyboard" do
  version "7.051"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/libertinuskeyboard/LibertinusKeyboard-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libertinus Keyboard"
  homepage "https://fonts.google.com/specimen/Libertinus+Keyboard"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libertinus Keyboard",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibertinusKeyboard-Regular.ttf"

  # No zap stanza required
end
