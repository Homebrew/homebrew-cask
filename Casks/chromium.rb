cask "chromium" do
  arch = Hardware::CPU.intel? ? "Mac" : "Mac_Arm"

  if Hardware::CPU.intel?
    version "966943"
    sha256 "b4f08ce3c51d712c8f0fbb76bfeff5876cf0310fbdf8a91bef71200ac0f73db0"
  else
    version "964845"
    sha256 "5ec6b331759318c7861c1d28b746afa0dc176ba87c8ffd297fcfc962aedd3b81"
  end

  url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/#{arch}/#{version}/chrome-mac.zip",
      verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/"
  name "Chromium"
  desc "Free and open-source web browser"
  homepage "https://www.chromium.org/Home"

  livecheck do
    url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/#{arch}%2FLAST_CHANGE?alt=media"
    regex(/v?(\d+(?:\.\d+)*)/i)
  end

  conflicts_with cask: [
    "eloston-chromium",
    "freesmug-chromium",
  ]

  app "chrome-mac/Chromium.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/chromium.wrapper.sh"
  binary shimscript, target: "chromium"

  preflight do
    File.write shimscript, <<~EOS
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
