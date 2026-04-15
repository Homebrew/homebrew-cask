cask "keet" do
  arch intel: "-Intel"

  version "4.13.1"
  sha256 arm:   "1a917d848d4d698d578c29b3f06927c2fdf2e695e0a70e8539b10a6ff80405bb",
         intel: "047024a949476f3b623dff72386f3af606a31e4be63f606daaa747a2935adc4e"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
