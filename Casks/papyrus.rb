cask 'papyrus' do
  version '3.0.0,oxygen'
  sha256 '1dfde1cc4a098a71af086b0903f4679d1d735cdbc26992428c9baba775da0439'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  depends_on macos: '>= :leopard'

  app 'Papyrus.app'

  caveats do
    depends_on_java '8+'
  end
end
