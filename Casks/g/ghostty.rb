cask "ghostty" do
  version "1.0.0"
  sha256 "091f7a2b3f4160a16d7d52b2822124bb9d5714993815f62a7d70027984372652"

  url "https://release.files.ghostty.org/#{version}/Ghostty.dmg"
  name "Ghostty"
  desc "Fast, native, feature-rich terminal emulator pushing modern features"
  homepage "https://ghostty.org/"

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Ghostty.app"
  binary "#{appdir}/Ghostty.app/Contents/MacOS/ghostty"
  binary "#{appdir}/Ghostty.app/Contents/Resources/fish/vendor_completions.d/ghostty.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/ghostty.fish"
  binary "#{appdir}/Ghostty.app/Contents/Resources/terminfo/67/ghostty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/67/ghostty"
  binary "#{appdir}/Ghostty.app/Contents/Resources/terminfo/78/xterm-ghostty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/78/xterm-ghostty"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man1/ghostty.1"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man5/ghostty.5"

  zap trash: [
    "/Applications/Ghostty.app/Contents/Resources/terminfo/67/ghostty",
    "~/.config/ghostty/",
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/HTTPStorages/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
    "~/Library/Saved Application State/com.mitchellh.ghostty.savedState",
    "~/Library/WebKit/com.mitchellh.ghostty",
  ]
end
