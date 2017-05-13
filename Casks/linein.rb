cask 'linein' do
  version '2.3.0'
  sha256 '583ce553838779116d5b25f20a3855260a1e8580f9b55a134a58a24bfdf31c96'

  url "https://rogueamoeba.com/legacy/downloads/LineIn-#{version.no_dots}.zip"
  appcast 'https://rogueamoeba.com/freebies/version-linein.rss',
          checkpoint: '6a8876f58d14769a263366de29dbc292638e35c5834cc04985ef41a794555722'
  name 'LineIn'
  homepage 'https://www.rogueamoeba.com/freebies/'

  app 'LineIn.app'

  caveats do
    discontinued
  end
end
