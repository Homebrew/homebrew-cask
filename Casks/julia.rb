cask 'julia' do
  version '0.4.3'
  sha256 '1d9010af32a2bb6cf58b20d4fb21165edd8d15399dd4ffdde7934b5fedd1a2ac'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.sub(%r{\.\d+$}, '')}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'
  license :mit

  depends_on macos: '>= :lion'

  app "Julia-#{version}.app"
  binary "Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
