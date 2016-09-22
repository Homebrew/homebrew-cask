cask 'spacemonkey' do
  version '0.7.21,134'
  sha256 'cf84059b32286feb14ee9d73c1c015c74e33c800548df817507e82c0803bd049'

  # hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c/app_versions/#{version.after_comma}?format=zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/aa33b6780fdfc71247b2995fa47b5d7c',
          checkpoint: 'f6e6e143a5ec6f6a6d62e478f5e29ed08c1441ec73c3ed12a13ba498b0672b51'
  name 'Space Monkey'
  homepage 'https://www.spacemonkey.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  auto_updates true

  app 'SpaceMonkey.app'
end
