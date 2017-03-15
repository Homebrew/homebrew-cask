cask 'julia' do
  version '0.5.1'
  sha256 '201a7bfa19cb832beec10579c02dbbc069a8966b87a4c7d1f80b4937a7f5dc1b'

  # s3.amazonaws.com/julialang was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/julialang/bin/osx/x64/#{version.major_minor}/julia-#{version}-osx10.7+.dmg"
  name 'Julia'
  homepage 'http://julialang.org/'

  depends_on macos: '>= :lion'

  app "Julia-#{version.major_minor}.app"
  binary "#{appdir}/Julia-#{version.major_minor}.app/Contents/Resources/julia/bin/julia"

  zap delete: '~/.julia'
end
