cask "session-manager-plugin" do
  version "1.2.234.0"
  sha256 "cb0da8b92c1e4ace7076ffacca3dbaeca683cb77220973e8438f38c5ca93ab14"

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
