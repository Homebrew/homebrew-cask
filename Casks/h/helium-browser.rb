cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.20.3.1"
  sha256 arm:          "f9b2f312ebbaa9be09fc59a5de9191404dc008f1502434a6f319af2a4dccbac5",
         intel:        "b2f7d2a8cd066c18e5d6f42d30227d77e7b39d1dc5e146fc0b09a3f225ecdadd",
         arm64_linux:  "3efa4b3cba4c64d3bbbcd5ff9f7a8901152e8c643ccff55b7b7c4bddfa781026",
         x86_64_linux: "1faf538648fe14a1ea92e325cb1238ae88c478666cb5e63d0d2af170fe4ca037"

  on_macos do
    depends_on macos: :ventura

    app "Helium.app"

    zap trash: [
      "~/Library/Application Support/net.imput.helium",
      "~/Library/Caches/net.imput.helium",
      "~/Library/HTTPStorages/net.imput.helium",
      "~/Library/Preferences/net.imput.helium.plist",
    ]
  end
  on_linux do
    app_image "helium-#{version}-#{arch}.AppImage", target: "Helium.AppImage"
  end

  url "https://github.com/imputnet/helium-#{os}/releases/download/#{version}/helium#{file_sep}#{version}#{file_sep}#{arch}#{url_end}"
  name "Helium"
  desc "Chromium-based web browser"
  homepage "https://helium.computer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
