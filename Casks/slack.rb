class Slack < Cask
  version 'latest'
  sha256 :no_check

  url 'https://rink.hockeyapp.net/api/2/apps/89dc0a9e3d01fb65e383b13c9ce0d3ac?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/89dc0a9e3d01fb65e383b13c9ce0d3ac'
  homepage 'http://slack.com'

  link 'Slack.app'
end
