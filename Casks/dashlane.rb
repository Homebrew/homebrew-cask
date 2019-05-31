cask 'dashlane' do
  version '6.1922.0.20633'
  sha256 'af0a59b059d2ec8f56bf4ffd036002189fae938fc80913d6eabad33a90f884cb'

  url "https://cdn5.dashlane.com/proxy/d3mfqat9ni8wb5/releases/#{version.major_minor_patch}/#{version}/qa-safariAppExtension/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?format=json&os=OS_X_10_14_5&target=archive&platform=launcher_macosx'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'
end
