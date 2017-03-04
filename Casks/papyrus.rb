cask 'papyrus' do
  version '2.0.2,neon'
  sha256 '128c334e3cc41f3962347c633fe91f6d819893c66a07ffb843cf11e820cd830c'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  depends_on macos: '>= :leopard'

  app 'Papyrus.app'

  caveats do
    depends_on_java('8+')
  end
end
