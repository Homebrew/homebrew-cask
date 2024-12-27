cask "meld" do
  version "3.21.0-r3,19"
  sha256 "50a4a45b3b7f44910c1a4c782c044579bc9dd09432c5e0a965dbeb973bbc767e"

  url "https://github.com/yousseb/meld/releases/download/osx-#{version.csv.second}/meldmerge.dmg",
      verified: "github.com/yousseb/meld/"
  name "Meld for OSX"
  desc "Visual diff and merge tool"
  homepage "https://yousseb.github.io/meld/"

  disable! date: "2024-12-16", because: :discontinued

  conflicts_with cask: "dehesselle-meld"
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
    "~/Library/Preferences/org.gnome.meld.plist",
    "~/Library/Saved Application State/org.gnome.meld.savedState/",
  ]

  caveats do
    requires_rosetta
  end
end
