cask 'julia' do
  version '0.4.7'
  sha256 'ff6ed2950e7f8908818ec6ca953c9f0777c52999058f5dc5c1eb8793166b9253'

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
