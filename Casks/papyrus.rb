cask 'papyrus' do
  version '2.0.0'
  sha256 'fbb4f8749bf6562c7b18ea99ba46616ebee69398acf578c355cca9450e3fd66b'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/neon/#{version}/papyrus-neon-#{version}-macosx64.tar.gz&r=1"
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Papyrus.app'
end
