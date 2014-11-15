cask :v1 => 'racket' do
  version '6.1.1'
  sha256 '4939fda695b3e7ac2c55675824be949dcade066ba5e2fcac9554914a9fe33934'

  url "http://mirror.racket-lang.org/installers/#{version}/racket-#{version}-x86_64-macosx.dmg"
  homepage 'http://racket-lang.org/'
  license :oss

  suite "Racket v#{version}"
end
