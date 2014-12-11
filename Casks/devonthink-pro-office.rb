cask :v1 => 'devonthink-pro-office' do
  version '2.8'
  sha256 '592d2c5e8ce9839102afb7c15eb71147d94006c5710ff91a06c8783bee8ef91b'

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkProOffice2.xml',
          :sha256 => '6db814e6797e848696b2c92613cf6764649b7050337842ac57dc8437af1b428e'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :unknown    # todo: improve this machine-generated value

  container :nested => 'DEVONthink_Pro_Office.dmg'
  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', :target => 'DEVONthink Pro Office.app'
end
