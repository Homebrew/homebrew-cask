cask 'clarify' do
  version '2.0.10-215'
  sha256 '107f2853754fae851c28c1c882074861fdf84daec9dfa88b7205be1e224223da'

  # amazonaws.com/files.clarify-it.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.clarify-it.com/v#{version.major}/updaters/release/#{version}/Clarify.app.zip"
  appcast "https://s3.amazonaws.com/files.clarify-it.com/v#{version.major}/updaters/release/appcast.xml",
          checkpoint: '61d4fc126e0055f654a8f781dacce21527b24437070c71e67fc7a2346431c9ae'
  name 'Clarify'
  homepage 'http://www.clarify-it.com/'

  app 'Clarify.app'
  
  caveats do
    discontinued
  end
end
