cask 'manuscripts' do
  version '1.2.9-79-GE9ECE4,208'
  sha256 '3e760270bcca7d38dd4d06bc2f708d170cf87a870c638ba272a5b58a4d70dbee'

  # hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4',
          checkpoint: '679b4a957565235403ea6b9b60e2d2243aefaf863bf5bbab99c4c455171df804'
  name 'Manuscripts'
  homepage 'https://www.manuscriptsapp.com/'

  depends_on macos: '>= :yosemite'

  app 'Manuscripts.app'
end
