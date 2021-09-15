cask "session-manager-plugin" do
  version "1.2.245.0"
  sha256 "884fe1d003a9001cfe3f5243a5d42153d6ad03645c78897a8f2545d89dc77e5f"

  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac/sessionmanager-bundle.zip",
      verified: "session-manager-downloads.s3.amazonaws.com/"
  name "Session Manager Plugin for the AWS CLI"
  desc "Plugin for AWS CLI to start and end sessions that connect to managed instances"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  livecheck do
    url :homepage
    regex(%r{<td>\s*v?(\d+(?:\.\d+)+)\s*</td>}i)
  end

  binary "sessionmanager-bundle/bin/session-manager-plugin"
end
