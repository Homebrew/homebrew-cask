cask 'dcp-o-matic' do
  version '2.13.137'
  sha256 'f9433049314c25e5ac79d37873b62fef86493500e22c0f93601a686da6aa089b'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
