cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.22.5.1"
  sha256 arm:          "7d780f39cf532edd05567d0984d73e0b2bf2d50fcbc9dfc9b0b6b46e194484b3",
         intel:        "66974b4b0ac44076b2b641e6b09a8c6bf094ef66b7aaae834453a06ec8628fe1",
         arm64_linux:  "4695a6f85ed9522fe11a9bed98a91df039f4bb32d113c615c992cce33f88e44a",
         x86_64_linux: "975bc65474a5bf1d410c36b9d0e914123cbe66093043c1e8db5dc868d3623955"

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

    zap trash: [
      "~/.cache/net.imput.helium",
      "~/.config/net.imput.helium",
    ]
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
