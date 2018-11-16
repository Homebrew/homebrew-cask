cask 'eim' do
  version '2.0.5,82405'
  sha256 '87bd954efc8771f418c8242ca7b2e9b8c1c28b5bb0f08f4434269e371f84591e'

  url "https://dldir1.qq.com/qqfile/crm/hrtx/EIM_r#{version.before_comma}.#{version.after_comma}.dmg"
  name 'EIM'
  homepage 'http://b.qq.com/eim/main.html'

  app 'EIM.app'
end
