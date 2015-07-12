cask :v1 => 'chatology' do
  version '1.0.6'
  sha256 'ca29acf56a4be7e6415cfaaac7d0fa5994dc132fe94eaa45e1c37f6aa4d07225'

  url "http://cdn.flexibits.com/Chatology_#{version}.zip"
  appcast 'https://flexibits.com/chatology/appcast.php'
  name 'Chatology'
  homepage 'https://flexibits.com/chatology'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Chatology.app'
end
