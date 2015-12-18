cask 'between' do
  version :latest
  sha256 :no_check

  url 'http://assets-pc.between.us/downloads/between-latest.dmg'
  name 'Between'
  homepage 'https://between.us'
  license :commercial

  app 'Between.app'
end
