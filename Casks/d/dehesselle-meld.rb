cask "dehesselle-meld" do
  arch arm: "arm64", intel: "x86_64"

  version "3.22.3+100"
  sha256 arm:   "e2ed99dbe470837f314db06f74093ff027e270855597dd4866c8e328506e6dd9",
         intel: "c1ae72cb2f0436ff68e524227ca1e04bb0e641765e2ed6f224474d3b16b9e054"

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
