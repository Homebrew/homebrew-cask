class Slack < Cask
  url 'https://rink.hockeyapp.net/api/2/apps/89dc0a9e3d01fb65e383b13c9ce0d3ac?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/89dc0a9e3d01fb65e383b13c9ce0d3ac'
  homepage 'http://slack.com'
  version 'latest'
  sha256 :no_check
  link 'Slack.app'
end
