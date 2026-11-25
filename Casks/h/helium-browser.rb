cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.22.4.1"
  sha256 arm:          "322a25b04e9d822207e78ade85e2f24d14f1bef42339511e06d0401ca3795cb2",
         intel:        "9dd5e66d00b771973778f95e6d5bd89291aa3847021a3e8792ca2ca3d425355c",
         arm64_linux:  "a9a62795a45a19278ee2cfc29a3378b2fa369d3c8187fa1fece098557c580492",
         x86_64_linux: "689b3c6b25e61924695c360e7e18b8be01e55c127e9c741a08632bf7189b0188"

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
