cask "chromium" do
  arch = Hardware::CPU.intel? ? "Mac" : "Mac_Arm"

  version "937972"

  if Hardware::CPU.intel?
    sha256 "b465a412de29ff6e71d10fa8bc1dc561ec97d4c8a3d51320a5d8e87ade762548"
  else
    sha256 "fa273e11514de8ab913283c3c1e65a2ccde1affbd1ba5ecc19675cef703b04c3"
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
