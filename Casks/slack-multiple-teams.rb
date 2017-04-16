class SlackMultipleTeams < Cask
  version :latest
  sha256 :no_check

  url 'https://rink.hockeyapp.net/api/2/apps/06bd6493684f65a3b8f47aca92c9006e/app_versions/17?format=zip&avtoken=b0a01e6c53e6698f92e75b674b06adf58e189d43'
  homepage 'https://rink.hockeyapp.net/apps/06bd6493684f65a3b8f47aca92c9006e'
  license :unknown

  app 'Slack.app'
end
