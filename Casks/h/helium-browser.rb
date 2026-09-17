cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.17.1.1"
  sha256 arm:          "59a3fcd033b49a8d80b23b717d07e60398aeb2b97ec78c7024df96a9e01b8014",
         intel:        "a1a36b40ba6d17d3cb8af3a5020814fea9c86c602cde2f472e08ef467f58671e",
         arm64_linux:  "03ad2d40570268e3e33a97d5f690dee632e1bcec6f678a79fea8b19949990aaf",
         x86_64_linux: "13403e0cf34b5897abf7ab9d999ee41edf2fd584a608134ba66154aef50e788f"

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
