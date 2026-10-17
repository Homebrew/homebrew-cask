cask "kkterm" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3000.0.24"
  sha256 arm:          "a5dc2f566121af6cf7f1f80d38979f7efd75d9c59d379aa45b34e40de1c64316",
         intel:        "a5dc2f566121af6cf7f1f80d38979f7efd75d9c59d379aa45b34e40de1c64316",
         x86_64_linux: "ada171e1531382deaca098e45ec059cefea5bd4c0b602f52c0548a9211f0f529"

  on_macos do
    app "KKTerm.app"

    zap trash: [
      "~/Library/Application Support/com.kkterm.app",
      "~/Library/Caches/com.kkterm.app",
      "~/Library/Preferences/com.kkterm.app.plist",
      "~/Library/Saved Application State/com.kkterm.app.savedState",
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
