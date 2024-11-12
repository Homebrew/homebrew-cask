cask "alex313031-thorium" do
  arch arm: "ARM64", intel: "X64"

  sha256 arm:   "041aa435b43b42308c7d4f32424891a95de0f62a63728d572b147b5585568628",
         intel: "1a6526f3259452f2d3e0f8163916b8cd2acb0cbf5d101dacc8ab6aad67b192f8"

  on_arm do
    version "M126.0.6478.231"
  end
  on_intel do
    version "M124.0.6367.218"
  end

  url "https://github.com/Alex313031/Thorium-MacOS/releases/download/#{version}/Thorium_MacOS_#{arch}.dmg",
      verified: "github.com/Alex313031/Thorium-MacOS/"
  name "Thorium"
  desc "Web browser"
  homepage "https://thorium.rocks/"

  livecheck do
    url :url
    regex(/^(M?\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^Thorium[._-]macOS[._-]#{arch}\.dmg$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "thorium"
  depends_on macos: ">= :catalina"

  app "Thorium.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/thorium.wrapper.sh"
  binary shimscript, target: "thorium"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Thorium.app/Contents/MacOS/Thorium' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Thorium",
    "~/Library/Caches/Thorium",
    "~/Library/Preferences/org.chromium.Thorium.plist",
    "~/Library/Saved Application State/org.chromium.Thorium.savedState",
  ]
end
