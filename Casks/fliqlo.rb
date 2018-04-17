cask 'fliqlo' do
  version '1.7.1'
  sha256 'afd741da6dd0dc971a67176509035edfffd0c6bd0295e6796f1b57f03f928d10'

  url "https://fliqlo.com/download/fliqlo_#{version.no_dots}.dmg",
      referer: 'https://fliqlo.com/#about'
  appcast 'https://fliqlo.com/changelog.txt',
          checkpoint: 'b109f9bef6ee577e33bcdb34aa4149bd75cdf19e0bf2e8adfba389a1a314a252'
  name 'Fliqlo'
  homepage 'https://fliqlo.com/'

  screen_saver 'Fliqlo.saver'
end
