cask "ghostty@tip" do
  version "9326,f95f636f1fff1cf449efa79f3f42dcb8d9bbfce5"
  sha256 "65fcc1a440e187fb1c6c60c955da8fb14c3a3531b08d0055b1d724c95d100b0e"

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
