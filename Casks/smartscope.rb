cask 'smartscope' do
  version :latest
  sha256 :no_check

  url 'https://www.lab-nation.com/package/smartscope/macos/latest/get'
  name 'SmartScope'
  homepage 'https://www.lab-nation.com/'

  depends_on formula: 'mono'

  app 'SmartScope.app'
end
