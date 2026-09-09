cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.16.6.1"
  sha256 arm:          "377b55cdd6054c8cb3c6be9a1b6b008d8c9362b5ef84aa1e9dcf893ef7cbe4b8",
         intel:        "df7e78fc013ba4f97c02794ca93b8967e6097c06088b473ff5fadd7bf266deab",
         arm64_linux:  "09154eb89845216668b0f3fe5a47c2a7f59b863796cca380d61afd9d556622ab",
         x86_64_linux: "4f6f5ee50a57b056000ef4ac35cb62d8b5ea2da0948c1e662d81271eda713bf4"

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
