cask "font-yuji-syuku" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/yujisyuku/YujiSyuku-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yuji Syuku"
  homepage "https://fonts.google.com/specimen/Yuji+Syuku"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yuji Syuku",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YujiSyuku-Regular.ttf"

  # No zap stanza required
end
