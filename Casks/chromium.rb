cask "chromium" do
  arch = Hardware::CPU.intel? ? "Mac" : "Mac_Arm"

  if Hardware::CPU.intel?
    version "962800"
    sha256 "b4698c951a2981919df555878d7555acd96e193bccb6d9852dd3934fc011ba46"
  else
    version "962796"
    sha256 "4c4b4bb5a324bb794684bb295bd2e1b3c5df218069dc297a35971c78deb265c5"
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
