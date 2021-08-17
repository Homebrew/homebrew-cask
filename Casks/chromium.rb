cask "chromium" do
  version "911995"

  if Hardware::CPU.intel?
    sha256 "aac338a5c75a92c15b3bca76d958fa8ff1291e6bd755922cd63157b77751f51a"

    url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip",
        verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/"

    livecheck do
      url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media"
      regex(/v?(\d+(?:\.\d+)*)/i)
    end
  else
    sha256 "76f1a257f882e2c5e1b1375fb4703053b9bc5a49f75b4a175d47ce7ae1388a12"

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
