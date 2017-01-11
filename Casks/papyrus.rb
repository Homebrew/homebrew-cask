cask 'papyrus' do
  version '2.0.1,neon'
  sha256 '9527e06a93ba87f998a90c1729f53382b7c47ea337f6ff0f2b0f7c5789f3f85f'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  depends_on macos: '>= :leopard'

  app 'Papyrus.app'

  caveats do
    depends_on_java('8+')
  end
end
