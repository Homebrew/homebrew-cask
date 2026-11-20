cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.22.1.1"
  sha256 arm:          "8c234480c01223c9dbc9e8dc5bc5be08b8e4341437d62dae9d75942b594fbd51",
         intel:        "0d982b11d7d44d612f36774be3d6b3c451f583ff24cf009e287bf73531515202",
         arm64_linux:  "e3e049fdc15f1c3b1853e6b3acebee5c88db0bb867276ab40c58f5ba54794d0b",
         x86_64_linux: "af4684e0e351a68534dc33443b369d02bc3ac2633734c97848c8a7439bcbb367"

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
