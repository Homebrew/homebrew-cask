cask "coq-platform" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2024.10.0,8.19.2024.10"
    sha256 "20cee7656b1c2d5dee50c0eede2fbb860a96354dcab2d32ecba6f1186ec03cf8"
  end
  on_intel do
    version "2023.11.0,8.18.2023.11"
    sha256 "cf63fd3031e0593d76431918427591c384591bfabf8fe9dbd385f92c0f0a0065"
  end

  url "https://github.com/coq/platform/releases/download/#{version.csv.first}/coq-Platform-release-#{version.csv.first}-version.#{version.csv.second}-MacOS-#{arch}.dmg",
      verified: "github.com/coq/platform/"
  name "Coq"
  desc "Formal proof management system"
  homepage "https://coq.inria.fr/"

  # Not every GitHub release provides a file for macOS or each arch
  # so we check multiple recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/release[._-]v?(\d+(?:\.\d+)+)[._-]version[._-](\d+(?:\.\d+)+)[._-]Macos[._-]#{arch}\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          "#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  depends_on macos: ">= :sierra"

  app "Coq-Platform~#{version.csv.second.major_minor}~#{version.csv.first.major_minor}.app"

  zap trash: [
    "~/.config/coq",
    "~/Library/Application Support/coq",
    "~/Library/Saved Application State/fr.inria.coq.coqide.savedState",
  ]
end
