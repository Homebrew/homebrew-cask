cask 'red' do
  version '0.6.1'
  sha256 'afefaa392e5dbc1ec6d8805376ecffe86a1f6d1ce46d426800556f3c4f698693'

  url "http://static.red-lang.org/dl/mac/red-#{version.no_dots}"
  name 'Red Programming Language'
  homepage 'http://www.red-lang.org/'

  container type: :naked

  binary "red-#{version.no_dots}", target: 'red'
end
