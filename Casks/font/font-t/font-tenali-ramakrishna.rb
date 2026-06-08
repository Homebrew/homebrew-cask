cask "font-tenali-ramakrishna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tenaliramakrishna/TenaliRamakrishna-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tenali Ramakrishna"
  homepage "https://fonts.google.com/specimen/Tenali+Ramakrishna"

  font "TenaliRamakrishna-Regular.ttf"

  # No zap stanza required
end
