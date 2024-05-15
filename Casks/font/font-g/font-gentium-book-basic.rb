cask "font-gentium-book-basic" do
  version "1.102"
  sha256 "2f1a2c5491d7305dffd3520c6375d2f3e14931ee35c6d8ae1e8f098bf1a7b3cc"

  url "https://software.sil.org/downloads/r/gentium/GentiumBasic_#{version.no_dots}.zip"
  name "Gentium Book Basic"
  homepage "https://software.sil.org/gentium/"

  font "GentiumBasic_#{version.no_dots}/GenBkBasB.ttf"
  font "GentiumBasic_#{version.no_dots}/GenBkBasBI.ttf"
  font "GentiumBasic_#{version.no_dots}/GenBkBasI.ttf"
  font "GentiumBasic_#{version.no_dots}/GenBkBasR.ttf"

  # No zap stanza required
end
