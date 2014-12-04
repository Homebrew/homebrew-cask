cask :v1 => 'factor' do
  version '0.98'
  sha256 'to be defined'

  url "http://downloads.factorcode.org/releases/#{version}/factor-macosx-x86-64-#{version}.dmg"
  homepage 'http://factorcode.org/'
  license :bsd

  app 'factor/Factor.app'
  binary 'factor/Factor.app/Contents/MacOS/factor'
end
