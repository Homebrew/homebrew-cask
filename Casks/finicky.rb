cask 'finicky' do
  version '2.2.2'
  sha256 '84c604974bc2171de31709823b0d9388610068e2d51e5b930b7d5999626105de'

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast 'https://github.com/johnste/finicky/releases.atom'
  name 'Finicky'
  homepage 'https://github.com/johnste/finicky'

  depends_on macos: '>= :sierra'

  app 'Finicky.app'
end
