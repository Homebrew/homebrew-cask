cask 'session-manager-plugin' do
  version :latest
  sha256 :no_check

  # session-manager-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://session-manager-downloads.s3.amazonaws.com/plugin/latest/mac/sessionmanager-bundle.zip'
  name 'Session Manager Plugin for the AWS CLI'
  homepage 'https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html'

  binary 'sessionmanager-bundle/bin/session-manager-plugin'
end
