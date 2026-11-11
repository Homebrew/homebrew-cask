cask "smoothcsv" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.26.3"
  sha256 arm:          "2dca68076ef1818c63300c7a9cb237c4b1dcd3626fdb0ff9143a7c3dfa91c9b1",
         intel:        "2dca68076ef1818c63300c7a9cb237c4b1dcd3626fdb0ff9143a7c3dfa91c9b1",
         arm64_linux:  "acf7afefb6724bb5b2fbd3aa24bc56ce4ee0d831a0a1f955a356fe452eb8f9cf",
         x86_64_linux: "082a79bfbbe843f0f5e406a5805ed47db12bafae3fd51525aa8894364f554bf4"

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
