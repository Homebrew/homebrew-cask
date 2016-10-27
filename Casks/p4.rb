cask 'p4' do
  version '2016.1.1454320'
  sha256 '205ee5dafca52b7dd069c9273dd3fa4918134828fa798b4667c89adbd66b7891'

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
