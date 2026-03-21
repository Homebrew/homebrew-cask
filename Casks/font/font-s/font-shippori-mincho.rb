cask "font-shippori-mincho" do
  version "3.110"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/shipporimincho"
  name "Shippori Mincho"
  homepage "https://fonts.google.com/specimen/Shippori+Mincho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shippori Mincho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShipporiMincho-Bold.ttf"
  font "ShipporiMincho-ExtraBold.ttf"
  font "ShipporiMincho-Medium.ttf"
  font "ShipporiMincho-Regular.ttf"
  font "ShipporiMincho-SemiBold.ttf"

  # No zap stanza required
end
