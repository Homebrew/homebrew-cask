cask "chromium" do
  version "849270"
  sha256 "530489e5e7f25cfea009b9be9f9c3a15853152fc43ab961b86a459cd0bb45dfc"

  url "https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/#{version}/chrome-mac.zip",
      verified: "commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/"
  name "Chromium"
  desc "Free and open-source web browser"
  homepage "https://www.chromium.org/Home"

  livecheck do
    url "https://www.googleapis.com/download/storage/v1/b/chromium-browser-snapshots/o/Mac%2FLAST_CHANGE?alt=media"
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
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Chromium.app/Contents/MacOS/Chromium' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/org.chromium.Chromium.plist",
    "~/Library/Saved Application State/org.chromium.Chromium.savedState",
  ]
end
