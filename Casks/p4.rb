cask 'p4' do
  version '2016.2.1468155'
  sha256 '1e6165711902b65612637aa190e7ba09a8559f1e4e057e2b4587e7756c2bef59'

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
