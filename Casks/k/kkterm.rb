cask "kkterm" do
  os macos: "macos-universal.dmg", linux: "linux-x86_64.AppImage"

  version "3000.0.26"
  sha256 arm:          "2bf28788752d48046e053a1b988665bc57f3173aaa982ff909cc33de163de783",
         intel:        "2bf28788752d48046e053a1b988665bc57f3173aaa982ff909cc33de163de783",
         x86_64_linux: "d6dc61d87131595c187ffd553d33795ebd313ef6ed46c32a95c0ee15b35ef8b5"

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
