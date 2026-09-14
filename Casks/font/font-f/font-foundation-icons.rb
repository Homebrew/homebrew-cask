cask "font-foundation-icons" do
  version :latest
  sha256 :no_check

  url "https://zurb.com/playground/uploads/upload/upload/288/foundation-icons.zip"
  name "Foundation Icons"
  homepage "https://zurb.com/playground/foundation-icon-fonts-3"

  font "foundation-icons/foundation-icons.ttf"

  # No zap stanza required
end
