cask "smoothcsv" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.26.0"
  sha256 arm:          "75f8428947c86c91a70c19eed001f8bbd71a84c2a605af77fcba69bf09ea6681",
         intel:        "75f8428947c86c91a70c19eed001f8bbd71a84c2a605af77fcba69bf09ea6681",
         arm64_linux:  "63663a24617575e0a650cf822fbbe767c62124ed8b1653c5407c8e84152f9e38",
         x86_64_linux: "f2abb18df6199155243f10b516cfadd3b8c5e145c69d69abb6029b8dbdc3f6ab"

  on_macos do
    app "SmoothCSV.app"
    binary "#{appdir}/SmoothCSV.app/Contents/MacOS/smoothcsv-cli", target: "smoothcsv"

    uninstall quit: "com.smoothcsv.desktop"

    zap trash: [
      "~/Library/Application Support/com.smoothcsv.desktop",
      "~/Library/Caches/com.smoothcsv.desktop",
      "~/Library/Logs/com.smoothcsv.desktop",
      "~/Library/WebKit/com.smoothcsv.desktop",
    ]
  end
  on_linux do
    app_image "SmoothCSV_#{version}_#{arch}.AppImage", target: "SmoothCSV.AppImage"

    zap trash: [
      "~/.cache/com.smoothcsv.desktop",
      "~/.config/com.smoothcsv.desktop",
      "~/.local/share/com.smoothcsv.desktop",
    ]
  end

  url "https://github.com/kohii/smoothcsv3/releases/download/v#{version}/SmoothCSV_#{version}_#{arch}.#{os}"
  name "SmoothCSV"
  desc "CSV editor"
  homepage "https://smoothcsv.com/"
end
