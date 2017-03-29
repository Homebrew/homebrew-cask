cask 'red' do
  version '0.6.2'
  sha256 'dc58bd3a264fbcc1aa3c54ea351ad0e2c14b6a2ecd4a299077d221b9958c4f90'

  url "http://static.red-lang.org/dl/mac/red-#{version.no_dots}"
  name 'Red Programming Language'
  homepage 'http://www.red-lang.org/'

  container type: :naked

  binary "red-#{version.no_dots}", target: 'red'
end
