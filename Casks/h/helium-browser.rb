cask "helium-browser" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  file_sep = on_system_conditional macos: "_", linux: "-"
  url_end = on_system_conditional macos: "-macos.dmg", linux: ".AppImage"

  version "0.21.3.1"
  sha256 arm:          "3debd0f2f3a3cf0f4bfa5dfbe4d807a3391c17c752178be4449719245ed0610b",
         intel:        "af69aeebfacba51f59f67e58fd89c51a10e2b632adb9c7fe59a6fbfcff96352b",
         arm64_linux:  "f7f3ae03f9a9c55f1b2d420688a86391fd7d3432f1e62588a2e6dd780c154404",
         x86_64_linux: "a8540596c93a44631605602f3bc4eeda5bff83eb1a3a8b02e4d04a4c8473e29d"

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
