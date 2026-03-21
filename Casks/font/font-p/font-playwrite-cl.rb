cask "font-playwrite-cl" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playwritecl/PlaywriteCL%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playwrite CL"
  homepage "https://fonts.google.com/specimen/Playwrite+CL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Playwrite CL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PlaywriteCL[wght].ttf"

  # No zap stanza required
end
