cask "font-pattaya" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pattaya/Pattaya-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pattaya"
  homepage "https://fonts.google.com/specimen/Pattaya"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pattaya",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Pattaya-Regular.ttf"

  # No zap stanza required
end
