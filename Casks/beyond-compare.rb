cask :v1 => 'beyond-compare' do
  version '4.0.2.19186'
  sha256 '891492897485cc8ef7fa4636185fbc9c188e8dac6ec4564f326884af43fc18d3'

  url "http://www.scootersoftware.com/BCompareOSX-#{version}.zip"
  homepage 'http://www.scootersoftware.com/'
  license :commercial

  app 'Beyond Compare.app'

  postflight do
    suppress_move_to_applications
  end
end
