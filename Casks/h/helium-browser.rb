cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.16.4.1"
  sha256 arm:          "7c945dcbaca8151d2b2c287d438a7b46bcbe69a3d9d921db87d60cc35b4b8f6c",
         intel:        "170b4acf31b023f6ac9a7dbc3a52c0a66228f2860fa0da75bdd91ea35ba8fadf",
         arm64_linux:  "3cd0d7a30f50e1c3f9656de15e45832a29176d51204837fc314f88b9c8cc4dea",
         x86_64_linux: "cf43a82a65b8f45ff61779b18d997226c4d8e3991ec992408f8a63a0606304ef"

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
