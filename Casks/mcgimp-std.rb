cask 'mcgimp-std' do
  version '2.10'
  sha256 'bee94c104f07292781f26f34c4cd830b00bdf951eceb1f339d4c92c571594082'

  url "https://www.partha.com/downloads/McGimp-#{version}-std.app.zip"
  name 'McGimp'
  homepage 'https://www.partha.com/'

  app "McGimp-#{version}-std.app"
end
