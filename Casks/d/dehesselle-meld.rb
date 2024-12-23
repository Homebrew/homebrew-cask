cask "dehesselle-meld" do
  arch arm: "arm64", intel: "x86_64"

  version "3.22.2+81"
  sha256 arm:   "e29ca6e5c6a0841116e7553519f1d873401193b8598f421dcfd3916acb27e9d0",
         intel: "7b482ce7c0ca270a48b516c2e8e5e9b70310298a61b3f82e6e4e639fc3bb62db"

  url "https://gitlab.com/api/v4/projects/51547804/packages/generic/meld_macos/#{version}/Meld-#{version}_#{arch}.dmg"
  name "Meld for OSX"
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
