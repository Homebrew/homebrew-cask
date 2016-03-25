cask 'hype' do
  version '3.5.1-526'
  sha256 'a6bbfef822d08c94b02a715c1f76bb95174cc2be92edcb141ca9c0563478de65'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-}, '')}.app.zip"
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '6dacb16cbcb5a3bc2790d81740a18ecded789c0b72257063b710a8c8a105c0b6'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15762
  app 'Hype2.app', target: "Hype #{version.to_i}.app"
end
