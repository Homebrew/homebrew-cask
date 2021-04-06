cask "session-manager-plugin" do
  version "1.2.30.0"
  sha256 "900d2c3b1044edf70cb024288d581b2cccf5cd4d5ed3061e529b549b67b0bc05"

  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac/sessionmanager-bundle.zip",
      verified: "session-manager-downloads.s3.amazonaws.com/"
  appcast "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"
  name "Session Manager Plugin for the AWS CLI"
  desc "Plugin for AWS CLI to start and end sessions that connect to managed instances"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  binary "sessionmanager-bundle/bin/session-manager-plugin"
end
