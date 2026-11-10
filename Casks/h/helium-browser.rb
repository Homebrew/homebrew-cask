cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.21.2.1"
  sha256 arm:          "e8ebb22acdd3500a457b69689c48c586413973d172c9cfa3df2a5f8a7e373844",
         intel:        "adee389c302ea4144b2a1c7fd613068600a8f8d5ac5def647b0dd858f1228801",
         arm64_linux:  "221fb1518a045ce0f1cf4e3d3459e7ad80e5e5666c1b2e9af1f86e1f4ebc6028",
         x86_64_linux: "21d3fe4b2be637eb93fdea208d6b06d7fe9f78ee8c17d80fff9ed233702c066a"

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
