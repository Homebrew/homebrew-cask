cask "chromium" do
  version "914136"

  if Hardware::CPU.intel?
    sha256 "cb360986583355edb7de70ac19ae2413f27e51d9111c7b461ed971ae383d8eed"

    url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip",
        verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/"

    livecheck do
      url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media"
      regex(/v?(\d+(?:\.\d+)*)/i)
    end
  else
    sha256 "050a0cb5fbfadc5b660ce561f5eefc641e9db9432b9029d3b71f5f0f932fc81f"

    url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac_Arm/#{version}/chrome-mac.zip",
        verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac_Arm/"

    livecheck do
      url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac_Arm%2FLAST_CHANGE?alt=media"
      regex(/v?(\d+(?:\.\d+)*)/i)
    end
  end

  name "Chromium"
  desc "Free and open-source web browser"
  homepage "https://www.chromium.org/Home"

  conflicts_with cask: [
    "eloston-chromium",
    "freesmug-chromium",
  ]

  app "chrome-mac/Chromium.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/chromium.wrapper.sh"
  binary shimscript, target: "chromium"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Chromium.app/Contents/MacOS/Chromium' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
