cask "coq-platform" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2025.01.0,8.20.2025.01"
    sha256 "5bfced11017a61e6a0d71787e2a7a31ffbc09707792d783235caf99d0f41f0d3"
  end
  on_intel do
    version "2023.11.0,8.18.2023.11"
    sha256 "cf63fd3031e0593d76431918427591c384591bfabf8fe9dbd385f92c0f0a0065"
  end

  url "https://github.com/rocq-prover/platform/releases/download/#{version.csv.first}/coq-Platform-release-#{version.csv.first}-version.#{version.csv.second}-MacOS-#{arch}.dmg",
      verified: "github.com/rocq-prover/platform/"
  name "Coq Platform"
  desc "Formal proof management system"
  homepage "https://rocq-prover.org/"

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
