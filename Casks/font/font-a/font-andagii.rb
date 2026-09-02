cask "font-andagii" do
  version :latest
  sha256 :no_check

  url "http://www.i18nguy.com/unicode/andagii.zip",
      user_agent: :browser
  name "Andagii"
  homepage "http://www.i18nguy.com/unicode/unicode-font.html"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

  font "ANDAGII_.TTF"

  # No zap stanza required
end
