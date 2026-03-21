cask "font-tenali-ramakrishna" do
  version "1.0.5"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tenaliramakrishna/TenaliRamakrishna-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tenali Ramakrishna"
  homepage "https://fonts.google.com/specimen/Tenali+Ramakrishna"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tenali Ramakrishna",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TenaliRamakrishna-Regular.ttf"

  # No zap stanza required
end
