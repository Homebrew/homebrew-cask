cask 'red' do
  version '0.6.3'
  sha256 '8fa0aecd8c0cc21ea87c2b26ce940a8cb53ef61d78f1b9e350d2fa8a4e5e7990'

  url "http://static.red-lang.org/dl/mac/red-#{version.no_dots}"
  name 'Red Programming Language'
  homepage 'http://www.red-lang.org/'

  container type: :naked

  binary "red-#{version.no_dots}", target: 'red'
end
