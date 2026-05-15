cask "smoothcsv" do
  version "3.20.0"
  sha256 "c33cc11dec660b3c9b8032f47e1ebf7d159ebf68740d2b009080217e661ae72b"

  url "https://github.com/kohii/smoothcsv3/releases/download/v#{version}/SmoothCSV_#{version}_universal.dmg",
      verified: "github.com/kohii/smoothcsv3/"
  name "SmoothCSV"
  desc "CSV editor"
  homepage "https://smoothcsv.com/"

  depends_on :macos

  app "SmoothCSV.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/smoothcsv.wrapper.sh"
  binary shimscript, target: "smoothcsv"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/SmoothCSV.app/Contents/MacOS/smoothcsv-cli' "$@"
    EOS
  end

  uninstall quit: "com.smoothcsv.desktop"

  zap trash: [
    "~/Library/Application Support/com.smoothcsv.desktop",
    "~/Library/Caches/com.smoothcsv.desktop",
    "~/Library/Logs/com.smoothcsv.desktop",
    "~/Library/WebKit/com.smoothcsv.desktop",
  ]
end
