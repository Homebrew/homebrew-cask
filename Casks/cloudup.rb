cask :v1 => 'cloudup' do
  version :latest
  sha256 :no_check

  url 'https://zip.cloudup.com/f41gmwzoDkioEVevEkBW'
  homepage 'https://cloudup.com/download'
  license :unknown    # todo: improve this machine-generated value

  app 'Cloudup.app'
end
