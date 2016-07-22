cask 'p4' do
  version '2016.1.1411799'

  if Hardware::CPU.is_32_bit?
    sha256 'ddc3272687038b1b507017f6a702e9bdf41b8faf6d5b89ca27e0fc9b1879ad4f'
  else
    sha256 '85153a60d75d84b172320e0d9348d0da67979f24a2e63650e5febf005afac778'
  end

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx105x86#{'_64' unless Hardware::CPU.is_32_bit?}/p4"
  name 'Perforce Command-Line Client'
  name 'p4'
  homepage 'https://www.perforce.com/product/components/perforce-visual-client'
  license :gratis

  container type: :naked

  binary 'p4'
end
