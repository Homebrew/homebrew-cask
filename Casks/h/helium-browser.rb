cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.16.2.1"
  sha256 arm:          "6a88b9eba2c634686dd57872c990a56bb925ee59345b34eadf76813242a1caef",
         intel:        "e81e5e99700d9d5e1dd7eac87724f148a3b25dfc6ce16a1c4fea70276c68c053",
         arm64_linux:  "7f9b283ada4542dc8ae856fecc1d4e6a46e652b8b3be4f81c35177e90425c097",
         x86_64_linux: "2d2dec8f2cd1d7249f0f42fd46e945e59832b3d1432e6f003d847f00970a0d02"

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
