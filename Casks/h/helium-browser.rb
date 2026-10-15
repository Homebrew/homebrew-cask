cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.19.3.1"
  sha256 arm:          "ba0c30c483ee6c46e48ffc239ae6b2b0847afdeb54eb4a6ea31665054a52d159",
         intel:        "05085e9fa42065d36eb2810fcf28eafe223b6a755992ee3e8947e5147fead6be",
         arm64_linux:  "6bbe4aa135da3e59f13e1ab681c612c3a37d3b9ae4b9bf204495d8b55ff86a0a",
         x86_64_linux: "460e6d2a5c86d0392162422d1b217a36631bd830f8d21e56518c960209797906"

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
