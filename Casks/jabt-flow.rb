cask 'jabt-flow' do
  version '1.8.6'
  sha256 '1ff9593b6ecd5c9cebaf9041e7302b6891c4911a52006741c663eb61903352e9'

  # createwithflow-updates.s3-us-west-2.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://createwithflow-updates.s3-us-west-2.amazonaws.com/Flow#{version.no_dots}_.zip"
  appcast 'https://createwithflow-updates.s3-us-west-2.amazonaws.com/appcast.xml'
  name 'Flow'
  homepage 'https://createwithflow.com/'

  auto_updates true

  app 'Flow.app'
end
