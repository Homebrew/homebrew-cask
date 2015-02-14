cask :v1 => 'cloudup' do
  version :latest
  sha256 :no_check

  url 'https://updates.cloudup.com/update?os=osx&app=Cloudup&format=zip&channel=release'
  homepage 'https://cloudup.com/download'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cloudup.app'
end
