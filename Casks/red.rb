cask 'red' do
  version '0.6.2'
  sha256 'c2d8cca6bf9735a4787be0331697d82b927d02b64368b4611b9f81fa6ba97492'

  url "http://static.red-lang.org/dl/mac/red-#{version.no_dots}"
  name 'Red Programming Language'
  homepage 'http://www.red-lang.org/'

  container type: :naked

  binary "red-#{version.no_dots}", target: 'red'
end
