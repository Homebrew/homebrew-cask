cask "keet" do
  arch intel: "-Intel"

  version "4.19.0"
  sha256 arm:   "4e935b0292adc030003cabce6ad09aed21834893390d6546ee10a3744d93acf2",
         intel: "065b1706de3e5e6802c0ac8ea4e436b7f1ed89624b364c1377eb35600fa98af7"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
