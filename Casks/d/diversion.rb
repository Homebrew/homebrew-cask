cask "diversion" do
  arch arm: "arm64", intel: "x86_64"

  # Diversion publishes one "latest" binary per platform and the agent updates
  # itself, so there is no pinned version or checksum. version :latest already
  # tells Homebrew not to manage versions, so auto_updates is omitted.
  version :latest
  sha256 :no_check

  url "https://dv-binaries.s3.us-east-2.amazonaws.com/darwin_#{arch}/dv"
  name "Diversion CLI"
  desc "Cloud-native version control CLI and agent"
  homepage "https://www.diversion.dev/"

  binary "dv"

  uninstall launchctl: "diversion.dv.agent"

  zap trash: "~/Library/LaunchAgents/diversion.dv.agent.plist"
end
