cask 'p4' do
  version '2016.1.1429894'
  sha256 'febd0a8a6212a82f9f3ef58bd4ce56a2a80f8afa527a47bdd9e7fdb143514b49'

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
