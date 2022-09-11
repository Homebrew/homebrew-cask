cask "cutter" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.1"
  sha256 arm:   "0ede37de0f345f633d83de31e912098a7e11cd6b44a2a3106bb9650e4ab54bf4",
         intel: "f901bfa610f600a021d7ef851c087869ab42c174b1afd1cb30dcd9cc9cbdf068"

  url "https://github.com/rizinorg/cutter/releases/download/v#{version}/Cutter-v#{version}-macOS-#{arch}.dmg",
      verified: "github.com/rizinorg/cutter/"
  name "Cutter"
  desc "Reverse engineering platform powered by Rizin"
  homepage "https://cutter.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Cutter.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/cutter.wrapper.sh"
  binary shimscript, target: "cutter"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Cutter.app/Contents/MacOS/Cutter' "$@"
    EOS
  end

  zap trash: [
    "~/.config/rizin",
    "~/.local/share/rizin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/re.rizin.cutter.sfl*",
    "~/Library/Application Support/rizin",
    "~/Library/Preferences/re.rizin.cutter.plist",
    "~/Library/Saved Application State/re.rizin.cutter.savedState",
  ]
end
