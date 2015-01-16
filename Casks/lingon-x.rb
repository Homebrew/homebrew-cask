cask :v1 => 'lingon-x' do


  if MacOS.release <= :mountain_lion

    depends_on :macos => '>= :mountain_lion'

    caveats "Lingon X requires OSX 10.8 Mountain Lion or later."
    caveats "You may want to check out Lingon3 from the Apple AppStore, which supports 10.7 and later.\n"
    caveats "From the Author's website (2015-01-16):\n\nThere are two major versions of Lingon available: Lingon 3 and Lingon X. Lingon 3 can only be found in Mac App Store and Lingon X is only available outside the Mac App Store. This is because Mac App Store rules limits what an app can do and Lingon X e.g. can run jobs as root. Both are easy to use but Lingon X is the latest and greatest version. But Lingon 3 is still for sale for those who still are running 10.7 Lion and want the comfort and convenience of Mac App Store.\n\nSee the comparison table... for all the details.  (https://www.peterborgapps.com/lingon/#comparison)"


  elsif MacOS.release <= :mavericks
    version '1.2.2'
    sha256 'edfee8715b7f33e61e45a56cff0a17aa52f69f53ae9a57087d314fac401687ad'

    url 'https://www.peterborgapps.com/downloads/LingonX.zip'
    appcast 'https://www.peterborgapps.com/updates/lingonx-appcast.xml'

    depends_on :macos => [:mountain_lion, :mavericks]


  else
    version :latest
    sha256 :no_check

    url 'http://www.peterborgapps.com/downloads/LingonX2.zip'
    appcast 'http://www.peterborgapps.com/updates/lingonx2-appcast.xml'

    depends_on :macos => '>= :yosemite'
  end


  name 'Lingon X'
  name 'Lingon X 2.0'
  name 'Lingon'
  homepage 'http://www.peterborgapps.com/lingon/'
  license :commercial

  app 'Lingon X.app'


end
