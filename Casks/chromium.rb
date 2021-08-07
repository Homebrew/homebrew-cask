cask "chromium" do
  if Hardware::CPU.intel?
    version "909619"
    sha256 "a4c4ecb9a393f4234f339704e788026876651f989865ed00d46cd338f171d8df"

    url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip",
        verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/"

    livecheck do
      url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media"
      regex(/v?(\d+(?:\.\d+)*)/i)
    end
  else
    version "909619"
    sha256 "5f6e20fab53e884de7c082c9c46ddce92da0bf51aa2d4b2b5becc3e8dbd9995d"

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
