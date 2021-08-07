cask "chromium" do
  version "909622"

  if Hardware::CPU.intel?
    sha256 "20d6fb64535409115544ebccbde708295e74ec7a57314b610587a7e1058c2f5e"

    url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip",
        verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/"

    livecheck do
      url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media"
      regex(/v?(\d+(?:\.\d+)*)/i)
    end
  else
    sha256 "d956feccd1b014c541d63b8179bb16f355c9a5d14f223e50019a631ac3aa2d3b"

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
