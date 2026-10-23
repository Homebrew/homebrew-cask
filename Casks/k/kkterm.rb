cask "kkterm" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3000.0.27"
  sha256 arm:          "44224fb9803137f46cc0447f449695c82c6f78c1785be61b1c526799ba201dcd",
         intel:        "44224fb9803137f46cc0447f449695c82c6f78c1785be61b1c526799ba201dcd",
         x86_64_linux: "bd03546a64a1be5e833da7effc0acc8eeedff17594e2cafcf03cf7e396770d80"

  on_macos do
    app "KKTerm.app"

    zap trash: [
      "~/Library/Application Support/com.kkterm.app",
      "~/Library/Caches/com.kkterm.app",
      "~/Library/Preferences/com.kkterm.app.plist",
      "~/Library/Saved Application State/com.kkterm.app.savedState",
      "~/Library/WebKit/com.kkterm.app",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "kkterm-#{version}-linux-x86_64.AppImage", target: "kkterm.AppImage"
  end

  url "https://github.com/ryantsai/KKTerm/releases/download/v#{version}/kkterm-#{version}-#{os}"
  name "KKTerm"
  desc "Local-first administration workspace for terminals, SSH, and SFTP"
  homepage "https://github.com/ryantsai/KKTerm"

  livecheck do
    url :url
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.end_with?(os) }

        match = release["name"]&.match(regex)
        next if match.blank?

        match[1]
      end.flatten
    end
  end

  auto_updates true
end
