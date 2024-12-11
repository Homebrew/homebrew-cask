cask "finch" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.4.3"
  sha256 arm:   "4f1617de32e7cd91cd1b90ee23619490f48cef3a484d517e7f78e4c8be621336",
         intel: "6646fb8c64987644ebaa04b2dd0f7150548f6de4b43ba736d78122708cd9c75b"

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
