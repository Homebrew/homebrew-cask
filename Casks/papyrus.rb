cask 'papyrus' do
  version '4.2.0,2018-12'
  sha256 '54ccef7276cf2a21f06e6b011b923d02f9f143e99b766f7e079ca33f871e4c98'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  app 'Papyrus.app'

  caveats do
    depends_on_java '8+'
  end
end
