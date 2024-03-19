cask "alex313031-thorium" do
  arch arm: "ARM64", intel: "X64"

  version "M122.0.6261.132"
  sha256 arm:   "fffd61677db27fb15fb91a4d3b8a12c379d23edc315d1e4dd8fd29ebbe9b21ff",
         intel: "baf7b11ccde3f5b06fdffde742d2b30b754ce661c21c7d0d63a21379762a912d"

  url "https://github.com/Alex313031/Thorium-MacOS/releases/download/#{version}/Thorium_MacOS_#{arch}.dmg",
      verified: "github.com/Alex313031/Thorium-MacOS/"
  name "Thorium"
  desc "Web browser"
  homepage "https://thorium.rocks/"

  livecheck do
    url :url
    regex(/^(M?\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  conflicts_with cask: "thorium"
  depends_on macos: ">= :high_sierra"

  app "Thorium.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/thorium.wrapper.sh"
  binary shimscript, target: "thorium"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Thorium.app/Contents/MacOS/Thorium' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Thorium",
    "~/Library/Caches/Thorium",
    "~/Library/Preferences/org.chromium.Thorium.plist",
    "~/Library/Saved Application State/org.chromium.Thorium.savedState",
  ]
end
