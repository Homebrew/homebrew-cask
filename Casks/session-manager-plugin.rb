cask "session-manager-plugin" do
  version "1.2.54.0"
  sha256 "920c6842bb6edadb15e6dff7a00f99da3b98db884f3b39cf1a395032ca8e2198"

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
