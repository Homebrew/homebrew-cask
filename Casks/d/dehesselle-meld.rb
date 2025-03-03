cask "dehesselle-meld" do
  arch arm: "arm64", intel: "x86_64"

  version "3.22.3+105"
  sha256 arm:   "aea65bbe21842e9c2e72c547df996858abbe05b2610c583f5121215556009527",
         intel: "db6be60ccf93f173851da8912b8b5cbf4a2aa6cdf419db4970c573f7fe0f7693"

  url "https://gitlab.com/api/v4/projects/51547804/packages/generic/meld_macos/#{version}/Meld-#{version}_#{arch}.dmg"
  name "Meld for macOS"
  desc "Visual diff and merge tool"
  homepage "https://gitlab.com/dehesselle/meld_macos"

  livecheck do
    url "https://gitlab.com/dehesselle/meld_macos.git"
  end

  conflicts_with cask: "meld"
  depends_on macos: ">= :high_sierra"

  app "Meld.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/meld.wrapper.sh"
  binary shimscript, target: "meld"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Meld.app/Contents/MacOS/Meld' "$@"
    EOS
  end

  zap trash: [
    "~/.local/share/meld",
    "~/Library/Application Support/org.gnome.Meld",
    "~/Library/Caches/org.gnome.Meld",
    "~/Library/Preferences/org.gnome.Meld.plist",
    "~/Library/Saved Application State/org.gnome.Meld.savedState/",
  ]
end
