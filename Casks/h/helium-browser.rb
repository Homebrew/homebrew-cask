cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.17.0.1"
  sha256 arm:          "ffc1ce32f1f33fcad25b4e9ad14e4d18c95d1899bc4346b9dd90580e0b1604d6",
         intel:        "ebe7728baf1c76f3dcdd945ff32e098414af88917b8e01cd29e99341ae09fb12",
         arm64_linux:  "f6376fa8c9ac6f007f6427623523d37ce214bf7362c150a22190fc2f1ceeb334",
         x86_64_linux: "266a9d130a173ffd86180312da08c0abb1b6a1616ec944ebe68b8c0e148e7076"

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
