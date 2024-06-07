cask "alex313031-thorium" do
  arch arm: "ARM64", intel: "X64"

  version "M124.0.6367.218"
  sha256 arm:   "0173afa7acfd7f0a875bf2d4b7a0aff113e3f5eee3c08961d7eb15eb7cfa42d5",
         intel: "1a6526f3259452f2d3e0f8163916b8cd2acb0cbf5d101dacc8ab6aad67b192f8"

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
  depends_on macos: ">= :catalina"

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
