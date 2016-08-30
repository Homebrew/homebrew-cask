cask 'p4' do
  version '2016.1.1429894'

  if Hardware::CPU.is_32_bit?
    sha256 '7e68c05e9822d36f7d77609b2e127baab16ec9d72c74c8367b78333ec9d244bb'
    url "http://filehost.perforce.com/perforce/r#{version.major_minor[2..-1]}/bin.macosx105x86/p4"
  else
    sha256 'bdd53babf08e487997a6a5bd9ee8da3241136f556d6f3a72dd0cadb04d2929d1'
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
