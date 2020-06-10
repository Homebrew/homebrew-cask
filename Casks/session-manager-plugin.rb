cask 'session-manager-plugin' do
  version '1.1.61.0'
  sha256 '426615b12b2d7728504ee7896c60fa330534314d6cb64ee8cb3ea0488e7d66e4'

  # session-manager-downloads.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://session-manager-downloads.s3.amazonaws.com/plugin/#{version}/mac/sessionmanager-bundle.zip"
  appcast 'https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html'
  name 'Session Manager Plugin for the AWS CLI'
  homepage 'https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html'

  binary 'sessionmanager-bundle/bin/session-manager-plugin'
end
