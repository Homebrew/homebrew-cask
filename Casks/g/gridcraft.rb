cask "gridcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.1"
  sha256 arm:          "d50165e78b8e35abbe68aa7c6f36c290023dec650d8aa797ac2347a930f6c197",
         intel:        "d50165e78b8e35abbe68aa7c6f36c290023dec650d8aa797ac2347a930f6c197",
         arm64_linux:  "f2ffccb29d0b7c37053fc7bd06bffbf4e2907cb2df2e4f593cf1dfd051e0bd5e",
         x86_64_linux: "5b1ce10ad6c7a2d389249dfd259010014a85fce1aa42c627fc4cda571671e221"

  on_macos do
    app "GridCraft.app"

    zap trash: [
      "~/Library/Application Support/GridCraft",
      "~/Library/Preferences/ai.storyteller.gridcraft.plist",
    ]
  end
  on_linux do
    app_image "gridcraft-#{version}-linux-#{arch}.AppImage", target: "GridCraft.AppImage"

    zap trash: "~/.config/gridcraft"
  end

  url "https://github.com/storytold/gridcraft/releases/download/v#{version}/gridcraft-#{version}-#{url_end}"
  name "GridCraft"
  desc "Spreadsheet editor"
  homepage "https://github.com/storytold/gridcraft"
end
