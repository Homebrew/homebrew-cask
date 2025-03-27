cask "ghostty@tip" do
  version "9938,1c3693c3836e4205016660ef30f830d84b9649ec"
  sha256 "f4769ad1b1cc5947a39c652f1f3a4af375b1f9d22c87643b87bb788596626ea6"

  url "https://tip.files.ghostty.org/#{version.csv.second}/Ghostty.dmg"
  name "Ghostty"
  desc "Terminal emulator that uses platform-native UI and GPU acceleration"
  homepage "https://ghostty.org/"

  livecheck do
    url "https://tip.files.ghostty.org/appcast.xml"
    regex(%r{/(\h+)/Ghostty\.dmg}i)
    strategy :sparkle do |item, regex|
      match = item.url&.match(regex)
      next if match.blank?

      "#{item.version},#{match[1]}"
    end
  end

  auto_updates true
  conflicts_with cask: "ghostty"
  depends_on macos: ">= :ventura"

  app "Ghostty.app"
  binary "#{appdir}/Ghostty.app/Contents/MacOS/ghostty"
  binary "#{appdir}/Ghostty.app/Contents/Resources/bash-completion/completions/ghostty.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/ghostty"
  binary "#{appdir}/Ghostty.app/Contents/Resources/fish/vendor_completions.d/ghostty.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/ghostty.fish"
  binary "#{appdir}/Ghostty.app/Contents/Resources/zsh/site-functions/_ghostty",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_ghostty"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man1/ghostty.1"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man5/ghostty.5"

  zap trash: [
    "~/.config/ghostty/",
    "~/Library/Application Support/com.mitchellh.ghostty",
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/HTTPStorages/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
    "~/Library/Saved Application State/com.mitchellh.ghostty.savedState",
    "~/Library/WebKit/com.mitchellh.ghostty",
  ]
end
