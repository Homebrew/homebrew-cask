cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.4.2"
  sha256 arm:   "fcee85c64278421d158cea62c9f50b202989e8e531ee7f43ebb0a8f6303b73b3",
         intel: "01e79a8f845b3a2cd5d7951d428a85ee7c3f13541dcd6ce19c50f98f06853b86"

  url "https://github.com/runfinch/finch/releases/download/v#{version}/Finch-v#{version}-#{arch}.pkg"
  name "Finch"
  desc "Open source container development tool"
  homepage "https://github.com/runfinch/finch"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Finch[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.(?:dmg|pkg|zip)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  pkg "Finch-v#{version}-#{arch}.pkg"

  uninstall script: {
    executable: "/Applications/Finch/uninstall.sh",
    sudo:       true,
  }

  zap trash: "~/.finch"
end
