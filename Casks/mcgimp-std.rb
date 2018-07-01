cask 'mcgimp-std' do
  version '2.10'
  sha256 'fe8f5e5a461ad120f2da7704a98baab5633308cd6c9c1f6550b08eec0e94d5a0'

  url "https://www.partha.com/downloads/McGimp-#{version}-std.app.zip"
  name 'McGimp'
  homepage 'https://www.partha.com/'

  app "McGimp-#{version}-std.app"
end
