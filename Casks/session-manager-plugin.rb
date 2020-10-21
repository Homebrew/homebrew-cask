cask "session-manager-plugin" do
  version "1.2.7.0"
  sha256 "1cffa8a4d8d2e77cd1f5e531a4d507183f6b64dd73ee50dcebe9ce351f1f6bfb"

  # session-manager-downloads.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac/sessionmanager-bundle.zip"
  appcast "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"
  name "Session Manager Plugin for the AWS CLI"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  binary "sessionmanager-bundle/bin/session-manager-plugin"
end
