cask 'pyfa' do
  version '1.33.2,lifeblood-1.7'
  sha256 '48ec3cf6f57998fa5b30da1a4abcce89e9f8ebe977fccd90d50056d9ccd17521'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'f61628f93b75a335d22f31539204c767d3faba4a90418af51caea863310dfd80'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
