cask "smoothcsv" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "3.26.1"
  sha256 arm:          "d79d13dd8915e6e3058d3cec261eff41620217a620f86defd64da3a4249af9b5",
         intel:        "d79d13dd8915e6e3058d3cec261eff41620217a620f86defd64da3a4249af9b5",
         arm64_linux:  "bf54af16f2d7761f6d8fb4fb140be068a6cab9d2ce049954786c1f8e32d7e44e",
         x86_64_linux: "4d06560d1f10958df8bb84ce2232763f48d03075415335fb15ec471a67333816"

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
