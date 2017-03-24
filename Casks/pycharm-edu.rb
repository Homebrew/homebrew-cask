cask 'pycharm-edu' do
  version '3.5.1,163.15268'
  sha256 '0b8bbcc5098d5634f5bced50113d50911520410b73be08d374d0a4691c3ed3f6'

  url "https://download.jetbrains.com/python/pycharm-edu-#{version.before_comma}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCE&latest=true&type=release',
          checkpoint: '2537a7ec131b6b6786ec75dc8a2344b75b6181dfed16d5dec0372b41a82f901e'
  name 'Jetbrains PyCharm Educational Edition'
  name 'PyCharm Edu'
  homepage 'https://www.jetbrains.com/pycharm-edu/'

  auto_updates true

  app 'PyCharm Edu.app'

  zap delete: [
                "~/Library/Preferences/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Application Support/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Caches/PyCharmEdu#{version.major_minor.no_dots}",
                "~/Library/Logs/PyCharmEdu#{version.major_minor.no_dots}",
              ]
end
