cask 'function-pilot' do
  version :latest
  sha256 :no_check

  url 'http://tinybird.com/download/FunctionPilot.dmg'
  name 'Function Pilot'
  homepage 'http://tinybird.com/mac/function-pilot.html'

  app 'Function Pilot.app'

  zap trash: [
               '~/Library/Application Support/FunctionPilot',
               '~/Library/Caches/com.tinybird.functionpilot',
             ]
end
