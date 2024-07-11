cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "1.7.3"
  sha256 arm:   "9fa09ddd1dc51106011fad1821867ce87292962dec2c3e80d5831ebcabcb21f1",
         intel: "38cf743c57823c14e9d657b72ef779c55985c5e2a7983c1cd28b04415a64449e"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
