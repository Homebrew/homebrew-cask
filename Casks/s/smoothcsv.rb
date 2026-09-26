cask "smoothcsv" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.25.1"
  sha256 arm:          "88024528426c8426e45ade15233c1e1cd28e77cd75067318a833108b89ff9d76",
         intel:        "88024528426c8426e45ade15233c1e1cd28e77cd75067318a833108b89ff9d76",
         arm64_linux:  "75f9a3b407f7df03c915082faddc47426b9f22e5e76fa36b45555b4d3ae85fe9",
         x86_64_linux: "4b01c60f482fbce425c0d245992c25cc3d2061614c9cf888d3c0fb265e64b72d"

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
