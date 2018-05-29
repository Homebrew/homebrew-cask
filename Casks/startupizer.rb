cask 'startupizer' do
  version '2.3.11,2060:1527510167'
  sha256 '56792a52fc91129f6f192cbbc0dbc6a7175d0699f2dab726baaf7d94f30ce150'

  # dl.devmate.com/com.gentlebytes.Startupizer2 was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.gentlebytes.Startupizer2/#{version.after_comma.before_colon}/#{version.after_colon}/Startupizer#{version.major}-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.gentlebytes.Startupizer#{version.major}.xml",
          checkpoint: '769e18682d1178f8aff38043f51ef3176cf24e1f3e69e16eb19309d4eafddac3'
  name "Startupizer#{version.major}"
  homepage 'http://gentlebytes.com/startupizer/'

  app "Startupizer#{version.major}.app"

  zap trash: [
               "~/Library/Caches/com.gentlebytes.Startupizer#{version.major}",
               "~/Library/Preferences/com.gentlebytes.Startupizer#{version.major}.plist",
             ]
end
