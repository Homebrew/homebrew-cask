cask :v1 => 'shiny-groove' do
  version '1.0.7'
  sha256 '9a1d54f7de620c049222c4b541fae8325f696de0dca98dbc3b8eac2e57fb03a5'

  url "http://static.shinygroove.com.s3.amazonaws.com/Shiny%20Groove#{version}.zip"
  appcast 'http://apps.shinynode.com/apps/shinygroove_appcast.xml',
          :sha256 => '89d90b73c82f2e77a4d54ddf8907c91977ac24c071dbd28119e9b65a2916f92d'
  name 'Shiny Groove'
  homepage 'http://www.shinygroove.com/'
  license :commercial

  app 'Shiny Groove.app'
end
