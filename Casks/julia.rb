cask 'julia' do
  version '0.4.6'
  sha256 '81d6d73f3519788164431c996a563663fe002ce901e55de80d3f72b4f9bc473e'

  # s3.amazonaws.com/julialang was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.sub(%r{\.\d+$}, '')}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'
  license :mit

  depends_on macos: '>= :lion'

  app "Julia-#{version}.app"
  binary "#{appdir}/Julia-#{version}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
