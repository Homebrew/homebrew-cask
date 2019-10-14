cask 'mcgimp' do
  version '2.10.8'
  sha256 '995efc5a837bf2111915bd79d01bae1ba91973266e66e27dbe0a1e0ad58f1a3a'

  url "https://www.partha.com/downloads/McGimp-#{version}.app.zip"
  name 'McGimp'
  homepage 'https://www.partha.com/'

  app "McGimp-#{version}.app"
end
