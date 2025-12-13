cask "simplex" do
  arch arm: "aarch64", intel: "x86_64"

  on_arm do
    version "6.4.8"
    sha256 "d2e9b5756bb969513df918321a022a39e396dd5cbda8a288848eb73033e83822"
  end
  on_intel do
    version "6.4.7"
    sha256 "a3bf966ce065a7f88a512e3cb87c95033a52b49cb1d16ee60257a23f392414e9"
  end

  url "https://github.com/simplex-chat/simplex-chat/releases/download/v#{version}/simplex-desktop-macos-#{arch}.dmg",
      verified: "github.com/simplex-chat/simplex-chat/"
  name "SimpleX Chat"
  desc "Messenger for SimpleX protocol"
  homepage "https://simplex.chat/"

  # Not every GitHub release provides a file for each architecture
  # so we check multiple recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^simplex[._-]desktop[._-]macos[._-]#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        next unless release["assets"]&.any? { |asset| asset["name"]&.match?(regex) }

        match = release["tag_name"]&.delete_prefix("v")
        next if match.blank?

        match
      end
    end
  end

  app "SimpleX.app"

  zap trash: "~/Library/Saved Application State/chat.simplex.app.savedState"
end
