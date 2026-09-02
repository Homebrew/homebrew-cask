cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.16.3.1"
  sha256 arm:          "4cc271d1305f08934d9500b672525ae5f9f5aa2ed49986d8bbc625a99bd83220",
         intel:        "4bc4cecbc19eba8fec87c00cd74edb2446592a1bb8a2fbe0a682020ef6c3f4fc",
         arm64_linux:  "14e53a5902c53dba4f2c4b902616acbb1138bc3b01e9c58873493d0c07208419",
         x86_64_linux: "9370a3ac5e39b3b4a2cd1a1ffd7f5e3a73cac24381f5cd40bc14a68e3ed13883"

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
