cask 'mcgimp-std' do
  version '2.10.4'
  sha256 '34d396976d4ac95b5dc83f2a6e631d72f06bbf6c1087d608a0373e55c313aae5'

  url "https://www.partha.com/downloads/McGimp-#{version}-std.app.zip"
  name 'McGimp'
  homepage 'https://www.partha.com/'

  app "McGimp-#{version}-std.app"
end
