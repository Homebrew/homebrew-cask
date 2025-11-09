cask "64gram" do
  version "1.1.83"
  sha256 "409d54a787102e8b188d6ed802ed23b003774fa0b4e2673048ec9647a00c81d4"

  url "https://github.com/TDesktop-x64/tdesktop/releases/download/v#{version}/64Gram_#{version}_mac.dmg"
  name "64Gram"
  desc "Telegram Desktop fork with power features"
  homepage "https://github.com/TDesktop-x64/tdesktop"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      file_regex = /^64Gram[._-]\d+(?:\.\d+)+[._-]mac\.dmg$/i

      json.map do |release|
        next if release["draft"] || release["prerelease"]
        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(file_regex) }

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  # Renamed to avoid conflict with telegram
  app "Telegram.app", target: "64Gram.app"

  zap trash: [
    "~/Library/Application Support/Telegram Desktop",
    "~/Library/Preferences/com.tdesktop.Telegram.plist",
    "~/Library/Saved Application State/com.tdesktop.Telegram.savedState",
  ]
end
