cask 'eclipse-modeling' do
  version '4.9.0,2018-09:R'
  sha256 '85ede22b460aa94f63492f3e5c97767963db6be062bed3fc8e999e8377726fc9'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Modeling.app'
end
