cask "font-shippori-mincho-b1" do
  version "3.110"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/shipporiminchob1"
  name "Shippori Mincho B1"
  homepage "https://fonts.google.com/specimen/Shippori+Mincho+B1"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Shippori Mincho B1",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ShipporiMinchoB1-Bold.ttf"
  font "ShipporiMinchoB1-ExtraBold.ttf"
  font "ShipporiMinchoB1-Medium.ttf"
  font "ShipporiMinchoB1-Regular.ttf"
  font "ShipporiMinchoB1-SemiBold.ttf"

  # No zap stanza required
end
