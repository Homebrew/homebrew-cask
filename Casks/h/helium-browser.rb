cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.21.1.1"
  sha256 arm:          "e0be38d4b39b8ce120b7c7eeda128ecfba0e6611d5d23f2fbab2e3510c276331",
         intel:        "5ea75758df4bf2ea7faedc1de39bc006e7e2a0e3c9258904310f83e3010f01b0",
         arm64_linux:  "aa0057946abcc66745267a73c7e08d8812a522d7874a42da025f3a0a11fb9c36",
         x86_64_linux: "a62bc4081b99709b3117165cf7abe7111d3b544671ab17232f429b9b0544b3fa"

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
