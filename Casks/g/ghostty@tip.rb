cask "ghostty@tip" do
  version "15608,4903e2821d0f17e83b75d1156ca93e6ac2d263c4"
  sha256 "9b08a9f1ea634f89e07cfabf3199483da5017f6cf8a1fb4ff8c3fb7435da780d"

  url "https://tip.files.ghostty.org/#{version.csv.second}/Ghostty.dmg"
  name "Ghostty"
  desc "Terminal emulator that uses platform-native UI and GPU acceleration"
  homepage "https://ghostty.org/"

  # Upstream typically creates several releases per day and there isn't always
  # a release for every version increase. This manually throttles versions to
  # one in every ten versions (not releases), aiming for roughly one update per
  # day. The cadence varies and this will inevitably miss that mark but we can
  # adjust this as needed.
  livecheck do
    url "https://tip.files.ghostty.org/appcast.xml"
    regex(%r{/(\h+)/Ghostty\.dmg}i)
    strategy :sparkle do |items, regex|
      versions = items.map do |item|
        match = item.url&.match(regex)
        next if match.blank?

        "#{item.version},#{match[1]}"
      end

      throttled_version = nil
      versions.filter_map do |version_str|
        version = version_str.split(",").first.to_i
        cur_throttled_version = version - (version % 10)
        next if cur_throttled_version == throttled_version

        throttled_version = cur_throttled_version
        version_str
      end
    end
  end

  auto_updates true
  conflicts_with cask: "ghostty"
  depends_on macos: ">= :ventura"

  app "Ghostty.app"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man1/ghostty.1"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man5/ghostty.5"
  bash_completion "#{appdir}/Ghostty.app/Contents/Resources/bash-completion/completions/ghostty.bash"
  fish_completion "#{appdir}/Ghostty.app/Contents/Resources/fish/vendor_completions.d/ghostty.fish"
  zsh_completion "#{appdir}/Ghostty.app/Contents/Resources/zsh/site-functions/_ghostty"

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
