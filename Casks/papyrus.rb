cask 'papyrus' do
  version '4.5.0,2019-09'
  sha256 '8fb94209c2bed5a0978cd77cdd8e0870dc343c38575f600fa5762b39a0fea2ab'

  url "https://www.eclipse.org/downloads/download.php?file=/modeling/mdt/papyrus/rcp/#{version.after_comma}/#{version.before_comma}/papyrus-#{version.after_comma}-#{version.before_comma}-macosx64.tar.gz&r=1"
  appcast 'https://mirrors.dotsrc.org/eclipse//modeling/mdt/papyrus/rcp/',
          must_contain: version.after_comma
  name 'Papyrus'
  homepage 'https://eclipse.org/papyrus/'

  app 'Papyrus.app'

  caveats do
    depends_on_java '8+'
  end
end
