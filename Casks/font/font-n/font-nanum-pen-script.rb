cask "font-nanum-pen-script" do
  version "1.10"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nanumpenscript/NanumPenScript-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Nanum Pen Script"
  homepage "https://fonts.google.com/specimen/Nanum+Pen+Script"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nanum Pen Script",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NanumPenScript-Regular.ttf"

  # No zap stanza required
end
