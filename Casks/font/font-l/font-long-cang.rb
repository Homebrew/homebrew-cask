cask "font-long-cang" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/longcang/LongCang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Long Cang"
  homepage "https://fonts.google.com/specimen/Long+Cang"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Long Cang",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LongCang-Regular.ttf"

  # No zap stanza required
end
