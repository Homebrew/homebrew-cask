cask 'julia' do
  version '0.4.5'
  sha256 'b253c035b846bbf120695306a5d8bc5d204e8287a5d3d3721a12408e1c990539'

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
