cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"

  version "0.15.1.1"
  sha256 arm:   "3765beadfa896e3bfe94a9d5263eec72df2f97e2f6ffc1377ecb6698261ded6c",
         intel: "8e517aaa23363091ec9f251f9ce73a79340b9752b1b9c4393571059f9ade6a0a"

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
  depends_on macos: :monterey

  app "Helium.app"

  zap trash: [
    "~/Library/Application Support/net.imput.helium",
    "~/Library/Caches/net.imput.helium",
    "~/Library/HTTPStorages/net.imput.helium",
    "~/Library/Preferences/net.imput.helium.plist",
  ]
end
