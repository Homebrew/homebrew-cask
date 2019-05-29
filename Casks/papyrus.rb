cask 'papyrus' do
  version '4.3.0,2019-03'
  sha256 '40330141eabf6d41bd49f3d8f37644b6f095cbf49652eaba28b0c80685dd6e6b'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  app 'Papyrus.app'

  caveats do
    depends_on_java '8+'
  end
end
