cask 'startupizer' do
  version '2.3.10,2058:1506439464'
  sha256 'c9d469c263ac1ac866ea067214e2b20e0583bb0763e1180d0e4cdc311ae52318'

  # dl.devmate.com/com.gentlebytes.Startupizer2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.gentlebytes.Startupizer2/#{version.after_comma.before_colon}/#{version.after_colon}/Startupizer#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.gentlebytes.Startupizer#{version.major}.xml",
          checkpoint: '2329c9571a65c4c5283f5d5d7c8b6553ad423a8c8a1f287ca35ec81b7d82a6d9'
  name "Startupizer#{version.major}"
  homepage 'http://gentlebytes.com/startupizer/'

  app "Startupizer#{version.major}.app"

  zap trash: [
               "~/Library/Caches/com.gentlebytes.Startupizer#{version.major}",
               "~/Library/Preferences/com.gentlebytes.Startupizer#{version.major}.plist",
             ]
end
