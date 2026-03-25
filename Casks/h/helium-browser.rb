cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.10.7.1"
  sha256 arm:   "cd05083fd2e86678cf2b2bf13c03a6c8eb0da7f72bd04052c57d1811d9893b9f",
         intel: "22f80ef586d7b832b12af87794cc7151110eec760c42c8c22a0e2688d142c63e"

  url "https://github.com/imputnet/helium-macos/releases/download/#{version}/helium_#{version}_#{arch}-macos.dmg",
      verified: "github.com/imputnet/helium-macos/"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
