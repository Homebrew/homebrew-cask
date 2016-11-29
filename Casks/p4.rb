cask 'p4' do
  version '2016.2.1457671'
  sha256 'a18b0e0338d6331588afb12c57427ddf169dcf374e5e2ab000001bd0260efc1c'

  url "http://filehost.perforce.com/perforce/r#{version.major_minor[2..-1]}/bin.macosx105x86_64/p4"
  name 'Perforce Command-Line Client'
  name 'p4'
  homepage 'https://www.perforce.com/product/components/perforce-commandline-client'

  container type: :naked

  binary 'p4'

  postflight do
    set_permissions "#{staged_path}/p4", '0755'
  end
end
