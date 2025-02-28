cask "clash-verge-rev" do
  arch arm: "aarch64", intel: "x64"

  version "2.1.2"
  sha256 arm:   "d87496a4409951612afa1c23994e715f3a21364067572031c5214c25f2778805",
         intel: "ecba0bb5dcca4af328afed5f7239c99e5987236b809b1882d80b94fb8955fac5"

  url "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v#{version}/Clash.Verge_#{version}_#{arch}.dmg",
      verified: "github.com/clash-verge-rev/clash-verge-rev/"
  name "Clash Verge Rev"
  desc "Continuation of Clash Verge - A Clash Meta GUI based on Tauri"
  homepage "https://clash-verge-rev.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Clash Verge.app"

  zap trash: [
    "~/Library/Application Support/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/Caches/io.github.clash-verge-rev.clash-verge-rev",
    "~/Library/WebKit/io.github.clash-verge-rev.clash-verge-rev",
  ]
end
