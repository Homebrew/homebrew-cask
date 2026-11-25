cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.22.2.1"
  sha256 arm:          "c3353aa936844613210203c947c3d315deb3255c78d09293141c447dd324c388",
         intel:        "da3593f491040797bbf63854b196261447963b4d530df49746246488c339f5b5",
         arm64_linux:  "0b2c823f524971b11d7db3caaca1567d01896e55b3485e72edaddf34720d7889",
         x86_64_linux: "f090c811253fd68bc7eb894b982a0be221d1701f77ed4b53f6146499af8bae04"

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
