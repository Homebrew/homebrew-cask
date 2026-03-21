cask "font-yaldevi" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yaldevi/Yaldevi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Yaldevi"
  homepage "https://fonts.google.com/specimen/Yaldevi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yaldevi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yaldevi[wght].ttf"

  # No zap stanza required
end
