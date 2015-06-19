cask :v1 => 'devonthink-pro-office' do
  version '2.8.5'
  sha256 'df042d0506f5b8a338561c2570d9ca89c9a269374a14ad250ba46e99729b6ee2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro_Office.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkProOffice2.xml',
          :sha256 => '56244b4d0f74d13b770a57b1bf1fb5b2de2dfe1e778bf4514fa6fecdfd7f610c'
  name 'DEVONthink Pro Office'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => 'DEVONthink_Pro_Office.dmg'
  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/3838
  app 'DEVONthink Pro.app', :target => 'DEVONthink Pro Office.app'
end
