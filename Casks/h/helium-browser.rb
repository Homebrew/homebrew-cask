cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.4.1"
  sha256 arm:   "1915fdb277e4762e41f68539ce29b34a063cce32aa77325964a55fd8aec4f535",
         intel: "dba8eafbedf064c47dd478c4744bbafc78955b6f37818bc446cdc0374fc51677"

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
  depends_on macos: :ventura

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
