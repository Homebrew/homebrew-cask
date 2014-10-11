class SlackBeta < Cask
  version '0.60 (1700)'
  sha256 '9245059fdad7914ec911eea121bcca5ccf716ea7b2fbeadc707e618692db89a1'

  url 'https://rink.hockeyapp.net/api/2/apps/06bd6493684f65a3b8f47aca92c9006e/app_versions/8?format=zip&avtoken=06be73491158dac7555587b2b79f9897a8b4827d'
  homepage 'https://slack.com/'
  license :closed

  app 'Slack.app'

  caveats do
    puts 'Initial beta version with multiple team support'
    os_version_only('10.6', '10.7', '10.8', '10.9', '10.10')
  end
end
