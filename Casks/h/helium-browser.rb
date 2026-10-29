cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.20.2.1"
  sha256 arm:          "2cbf7d21e10df46c58a2cf5bd9bfa58115d60219192c7dda3424bef3e92aa319",
         intel:        "15d9973bfc2e97dc766c91ce44a81b468792dc7e798343f93c71e6d142275422",
         arm64_linux:  "483a45bcf9a3e618eb46ff34113abaef017f51bc59dde0b535a13d04fe93b239",
         x86_64_linux: "ac4928424d31c863fff3ab75d3be873dfc92ede00e6889634dcbc5881a120397"

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
