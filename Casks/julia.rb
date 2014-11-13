cask :v1 => 'julia' do
  version '0.3.2'
  sha256 '33d05ca32633fbec2837f724aa6b5ad0721966323a3a1b3bff59fc468a4c23e3'

  url "https://s3.amazonaws.com/julialang/bin/osx/x64/0.3/julia-#{version}-osx10.7+.dmg"
  homepage 'http://julialang.org/'
  license :mit

  app "Julia-#{version}.app"

  zap :delete => '~/.julia'
end
