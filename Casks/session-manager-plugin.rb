cask "session-manager-plugin" do
  version "1.2.279.0"
  sha256 "15b8b932a09f05d723db27e13a928c42b048802e6fb638f8ba69a82aa8f33a9d"

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
