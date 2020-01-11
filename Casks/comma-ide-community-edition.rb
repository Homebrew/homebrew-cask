cask 'comma-ide-community-edition' do
  version '2019.10.0'
  sha256 '68d0fe226e489c9fa4cb1da621fd00100fd4e63118ff311091786b30828a33a3'

  url do
    require 'open-uri'
    require 'pp'
    # No known stable URL; fetching disposable URL from landing site
    URI('https://commaide.com/download/community/mac').open do |landing_page|
      landing_page.base_uri
    end
  end
  name 'Comma IDE - Community Edition'
  homepage 'https://commaide.com/'

  app 'Comma CT.app'

end
