cask 'red' do
  version '0.6.3'
  sha256 '3558eb6c7973443c91361b9d2b5824a4b3229209af0a13a580f46ae0f4043e81'

  url "http://static.red-lang.org/dl/mac/red-#{version.no_dots}"
  name 'Red Programming Language'
  homepage 'http://www.red-lang.org/'

  container type: :naked

  binary "red-#{version.no_dots}", target: 'red'
end
