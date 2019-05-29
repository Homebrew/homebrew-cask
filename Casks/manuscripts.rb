cask 'manuscripts' do
  version '1.3.0,209'
  sha256 'e946171a414e9dcc06a20bba743e5a3d73f4547c1ead27bed838363b06935b09'

  # hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4 was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/280aaebd99e1f12edc41b48d909db0c4'
  name 'Manuscripts'
  homepage 'https://www.manuscriptsapp.com/'

  depends_on macos: '>= :yosemite'

  app 'Manuscripts.app'
end
