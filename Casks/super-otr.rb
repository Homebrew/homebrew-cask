cask 'super-otr' do
  version '1.0,2017.09'
  sha256 'e7f3650fd6cd0670b55b0e2b00638414ef57f123f4401a8d1b1e450d8082ea98'

  url "http://apfel-a.macbay.de/wordpress/wp-content/downloads/#{version.after_comma.dots_to_slashes}/Super_OTR_#{version.before_comma}_neu.zip",
      user_agent: :fake
  appcast 'http://apfel-a.macbay.de/software/superotr/appcast-superotr.xml',
          checkpoint: '80fd936889d18af4abecb6156ccc19d43d1d6d3a684ca52337dc12ee093d7344'
  name 'Super OTR'
  homepage 'http://apfel-a.macbay.de/super-otr/'

  app 'Super OTR.app'
end
