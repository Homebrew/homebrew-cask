cask 'popsql' do
  version :latest
  sha256 :no_check

  url 'https://get.popsql.io/download/mac'
  name 'popSQL'
  homepage 'https://popsql.io/'

  app 'PopSQL.app'
end
