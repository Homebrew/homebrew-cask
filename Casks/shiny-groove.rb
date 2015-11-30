cask :v1 => 'shiny-groove' do
  version '1.0.7'
  sha256 '9a1d54f7de620c049222c4b541fae8325f696de0dca98dbc3b8eac2e57fb03a5'

  url "http://static.shinygroove.com.s3.amazonaws.com/Shiny%20Groove#{version}.zip"
  name 'Shiny Groove'
  homepage 'http://www.shinygroove.com/'
  license :commercial

  app 'Shiny Groove.app'
end
