cask "font-nothing-you-could-do" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nothingyoucoulddo/NothingYouCouldDo.ttf",
      verified: "github.com/google/fonts/"
  name "Nothing You Could Do"
  homepage "https://fonts.google.com/specimen/Nothing+You+Could+Do"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nothing You Could Do",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NothingYouCouldDo.ttf"

  # No zap stanza required
end
