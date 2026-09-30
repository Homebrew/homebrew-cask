cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.18.2.1"
  sha256 arm:          "86982d8df340d5a1bf1a0c76ada33d7d26797c6c3424a44afa676159b6a3e3eb",
         intel:        "930f9a7c7c64c8609768ac960b9be7d9bb6de86ad351ed67e1918c4b02fdfca1",
         arm64_linux:  "03e6094d329f9d6aad8ad0cc0e4397abb65b3c634829ff49173d50891ce64669",
         x86_64_linux: "aa6ec4400dd3413f5dd5e633a51408e07cd3f3de0626501cd4e55cdd1364de21"

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
