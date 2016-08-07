cask 'p4' do
  version '2016.1.1411799'

  if Hardware::CPU.is_32_bit?
    sha256 'ddc3272687038b1b507017f6a702e9bdf41b8faf6d5b89ca27e0fc9b1879ad4f'
    url "http://filehost.perforce.com/perforce/r#{version.major_minor[2..-1]}/bin.macosx105x86/p4"
  else
    sha256 '85153a60d75d84b172320e0d9348d0da67979f24a2e63650e5febf005afac778'
    url "http://filehost.perforce.com/perforce/r#{version.major_minor[2..-1]}/bin.macosx105x86_64/p4"
  end

  name 'Perforce Command-Line Client'
  name 'p4'
  homepage 'https://www.perforce.com/product/components/perforce-commandline-client'
  license :gratis

  container type: :naked

  binary 'p4'

  postflight do
    set_permissions "#{staged_path}/p4", '0755'
  end
end
