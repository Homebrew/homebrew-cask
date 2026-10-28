cask "kkterm" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3000.0.28"
  sha256 arm:          "4416e8381630cd7e00e6cb4904cd304f6d7754b18d84e16bd47c8e8542a139cc",
         intel:        "4416e8381630cd7e00e6cb4904cd304f6d7754b18d84e16bd47c8e8542a139cc",
         x86_64_linux: "101f46e414da21c64a5e4a78bd5701703b4ebc7a99547ffa662053d34bdab64d"

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
