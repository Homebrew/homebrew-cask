cask "smoothcsv" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.26.2"
  sha256 arm:          "654492459ec5f5cd9e16fd3cdb61d4bbed1c6200bb94d25c43a25b7332922813",
         intel:        "654492459ec5f5cd9e16fd3cdb61d4bbed1c6200bb94d25c43a25b7332922813",
         arm64_linux:  "0490f61d61aef236a20f360eb584a26bfa45c7fdf9eb9635c8c150ac84c6f538",
         x86_64_linux: "7f8b8f28b3a5b6327fb1fe86fede1a7295b0364ddfba964f1276adc85d39efd9"

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
