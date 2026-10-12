cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.19.2.1"
  sha256 arm:          "c07dab9c1571cf68cf856b35c6d0bf21c2cf53f77c43245163018e788094ebf1",
         intel:        "a032da1664b0b5aad30b3d02ce31e194ef5333d3b148f33a8182404c70a7e109",
         arm64_linux:  "d57e678d896a42b101eefec153ffc2960a0748d368a6afbc53d6c4de16cc6034",
         x86_64_linux: "a04550a3c7c70bdad3acd3a4430eda8d2afc0bf7173a9c58a403feab9517087f"

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
