cask 'pycharm-edu' do
  version '3.0.1'
  sha256 '34f6f1003cee6b2612c69b07dac1b0319899a93a6da928b15d3ab5c882bcd14e'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version}.dmg"
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'

  app 'PyCharm Edu.app'

  zap delete: [
                "~/Library/Preferences/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Application Support/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Caches/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Logs/PyCharmEdu#{version.major_minor.no_dots}",
              ]
end
