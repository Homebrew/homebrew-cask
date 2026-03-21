cask "font-protest-strike" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/proteststrike/ProtestStrike-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Strike"
  homepage "https://fonts.google.com/specimen/Protest+Strike"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Protest Strike",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ProtestStrike-Regular.ttf"

  # No zap stanza required
end
