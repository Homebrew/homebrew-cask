cask :v1 => 'cloudup' do
  version :latest
  sha256 :no_check

  url 'https://zip.cloudup.com/f41gmwzoDkioEVevEkBW'
  homepage 'https://cloudup.com/download'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cloudup.app'
end
