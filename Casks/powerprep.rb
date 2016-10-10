cask 'powerprep' do
  version '2.2'
  sha256 'dc3f81b50084337d44a9c4531449d8f0167f653e3233ad52308ca2f79295f440'

  url "https://www.ets.org/s/gre/powerprep/PowerPrepIIV#{version.dots_to_underscores}.pkg"
  name 'PowerPrep'
  homepage 'https://www.ets.org/gre/revised_general/prepare/powerprep2/'

  pkg "PowerPrepIIV#{version.dots_to_underscores}.pkg"

  uninstall pkgutil: 'org.ets.GrePowerprepII.Applications.pkg',
            delete:  '/Applications/POWERPREP II'
end
