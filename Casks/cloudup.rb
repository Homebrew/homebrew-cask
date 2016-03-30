cask 'cloudup' do
  version :latest
  sha256 :no_check

  url 'https://updates.cloudup.com/update?os=osx&app=Cloudup&format=zip&channel=release'
  name 'Cloudup'
  homepage 'https://cloudup.com/download'
  license :freemium

  app 'Cloudup.app'
end
