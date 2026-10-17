cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.19.4.1"
  sha256 arm:          "130e431008f25ded9d52210bdfa866b0ace59d04cdaaff07c77931fbd7f93321",
         intel:        "7a4999eb37e8792059a4b8aa26fffc7962c88b2f31a34ee2e31ff6e21126e75d",
         arm64_linux:  "fda0f9e0833d7f1b26297c648a8be14ea9e46604be57a47d4d94e178809c1acb",
         x86_64_linux: "5b2db392b3ed87f24aa844936059d68aca98bc20548eaaa0decfa3c280a2a0a7"

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
