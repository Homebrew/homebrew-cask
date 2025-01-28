# typed: strict
# frozen_string_literal: true

cask "samra" do
  version :latest
  sha256 :no_check

  url "https://github.com/NSAntoine/Samra/releases/latest/download/Samra.app.zip",
      verified: "github.com/NSAntoine/Samra/"
  name "Samra"
  desc "Native Asset Catalog explorer & editor"
  homepage "https://github.com/NSAntoine/Samra"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Samra.app"

  # Remove quarantine attribute for Gatekeeper
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/Samra.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.NSAntoine.Samra",
    "~/Library/Caches/com.NSAntoine.Samra",
    "~/Library/Preferences/com.NSAntoine.Samra.plist",
    "~/Library/Saved Application State/com.NSAntoine.Samra.savedState",
  ]

  caveats do
    <<~EOS
      Samra requires Xcode Command Line Tools to be installed.
      You can install them with:
        xcode-select --install
    EOS
  end
end
