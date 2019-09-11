cask 'papyrus' do
  version '4.4.0,2019-06'
  sha256 '1aee92356a57ecf738a3e801ea306a945a111d4e76bca3234d0bc0f7ae63b93f'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  appcast 'https://mirrors.dotsrc.org/eclipse//modeling/mdt/papyrus/rcp/',
          configuration: version.after_comma
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  app 'Papyrus.app'

  caveats do
    depends_on_java '8+'
  end
end
