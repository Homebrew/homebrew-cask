cask "chromium" do
  if Hardware::CPU.intel?
    version "904878"
    sha256 "81da34b01942200996ef835cc774762f26f845f2787403f170732a14508e60e9"

    url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip",
        verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/"

    livecheck do
      url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media"
      regex(/v?(\d+(?:\.\d+)*)/i)
    end
  else
    version "904870"
    sha256 "8058b862da2cb89cae1219fac8fae4ec4e980ee3ba7d4233c9eb4fa34befd68b"

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
