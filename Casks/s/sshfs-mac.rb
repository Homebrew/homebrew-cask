cask "sshfs-mac" do
  version "3.7.5"
  sha256 "611713612179cf7ccd2995051165da7d19e0ca199ae70d9680c3d3551f456d46"

  url "https://github.com/libfuse/sshfs/releases/download/sshfs-#{version}/sshfs-#{version}.pkg"
  name "SSHFS"
  desc "Network filesystem client to connect to SSH servers"
  homepage "https://github.com/libfuse/sshfs/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^sshfs[._-]v?(\d+(?:\.\d+)+)\.pkg$/i)
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

  depends_on :macos
  depends_on cask: "macfuse"

  pkg "sshfs-#{version}.pkg"

  uninstall pkgutil: "io.macfuse.installer.components.sshfs"

  # No zap stanza required
end
