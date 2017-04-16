cask :v1 => 'supermario64hd' do
  version :latest
  sha256 :no_check

  # mediafire.com is the official download host per the vendor homepage
  url 'http://www.mediafire.com/download/lh49cfng27o8vjy/SuperMario64HD_Mac.zip'
  name 'SuperMario64HD'
  homepage 'https://roystanross.wordpress.com/super-mario-64-hd/'
  license :unknown   

  app 'SuperMario64HD.app'
end
