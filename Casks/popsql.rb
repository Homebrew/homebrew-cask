cask 'popsql' do
  version :latest
  sha256 :no_check

  url 'https://get.popsql.io/download/mac'
  name 'PopSQL'
  homepage 'https://popsql.io/'

  app 'PopSQL.app'
end
