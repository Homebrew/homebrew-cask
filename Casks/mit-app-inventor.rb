cask 'mit-app-inventor' do
  version '3.0rc3'
  sha256 '7c1a5801eef82baac4045a8d6508b2b388d632baf79d4ef26cc150d53d19aa7d'

  # appinv.us was verified as official when first introduced to the cask
  url 'http://appinv.us/aisetup_mac_3.0rc3'
  name 'MIT App Inventor'
  homepage 'https://appinventor.mit.edu/explore/ai2/mac'

  pkg 'MITAppInventorSetup.pkg'
end
