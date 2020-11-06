cask "meld" do
  version "3.21.0-r3,osx-19"
  sha256 "50a4a45b3b7f44910c1a4c782c044579bc9dd09432c5e0a965dbeb973bbc767e"

  # github.com/yousseb/meld/ was verified as official when first introduced to the cask
  url "https://github.com/yousseb/meld/releases/download/#{version.after_comma}/meldmerge.dmg"
  appcast "https://github.com/yousseb/meld/releases.atom"
  name "Meld for OSX"
  desc "Visual diff and merge tool"
  homepage "https://yousseb.github.io/meld/"

  depends_on macos: ">= :high_sierra"

  app "Meld.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/meld.wrapper.sh"
  binary shimscript, target: "meld"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Meld.app/Contents/MacOS/Meld' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Preferences/org.gnome.meld.plist",
    "~/.local/share/meld",
    "~/Library/Saved Application State/org.gnome.meld.savedState/",
  ]
end
