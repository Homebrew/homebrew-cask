cask "ghostty@tip" do
  version "18042,33da6848d63b3bba2b4f31ab1531d618f2795192"
  sha256 "3bdc4a9fa4700aa7b78a20b41e7e214cd20439563576e2d9029043928a886396"

  url "https://tip.files.ghostty.org/#{version.csv.second}/Ghostty.dmg"
  name "Ghostty"
  desc "Terminal emulator that uses platform-native UI and GPU acceleration"
  homepage "https://ghostty.org/"

  # Upstream typically creates several releases per day and there isn't always
  # a release for every version increase.
  livecheck do
    url "https://tip.files.ghostty.org/appcast.xml"
    regex(%r{/(\h+)/Ghostty\.dmg}i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        match = item.url&.match(regex)
        next if match.blank?

        "#{item.version},#{match[1]}"
      end
    end
    throttle days: 1
  end

  auto_updates true
  conflicts_with cask: "ghostty"
  depends_on macos: :ventura

  app "Ghostty.app"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man1/ghostty.1"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man5/ghostty.5"
  bash_completion "#{appdir}/Ghostty.app/Contents/Resources/bash-completion/completions/ghostty.bash"
  fish_completion "#{appdir}/Ghostty.app/Contents/Resources/fish/vendor_completions.d/ghostty.fish"
  zsh_completion "#{appdir}/Ghostty.app/Contents/Resources/zsh/site-functions/_ghostty"

  uninstall quit: "com.mitchellh.ghostty"

  zap trash: [
    "~/.cache/ghostty",
    "~/.config/ghostty",
    "~/Library/Application Support/com.mitchellh.ghostty",
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/HTTPStorages/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
    "~/Library/Saved Application State/com.mitchellh.ghostty.savedState",
    "~/Library/WebKit/com.mitchellh.ghostty",
  ]
end
