cask "headlamp" do
  arch arm: "arm64", intel: "x64"

  version "0.33.0"
  sha256 arm:   "fd8dc04557f13d65e31ac3f4433c6b3c8865f97acbcf1d4c05aead2753c8b454",
         intel: "4be0b5dab2904381e8ddff9e0a567c5a97c9ab4938ea0cc6035795c4ab5b369a"

  url "https://github.com/headlamp-k8s/headlamp/releases/download/v#{version.sub(/-\d+/, "")}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/headlamp-k8s/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://headlamp.dev/"

  livecheck do
    url :url
    regex(/Headlamp[._-]v?(\d+(?:[.-]\d+)+)-mac-#{arch}/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  no_autobump! because: :bumped_by_upstream

  depends_on macos: ">= :catalina"

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]

  caveats <<~EOS
    ⚠️  MacOS may report Headlamp as being 'damaged' or 'corrupt'.

    Code signing under Kubernetes/CNCF is still being finalized, after the
    project's move under the Kubernetes SIG UI.

    In the meantime, you may need to run:
      xattr -dr com.apple.quarantine /Applications/Headlamp.app

    For updates and full instructions, visit:
      https://headlamp.dev/docs/latest/installation/desktop/
  EOS
end
