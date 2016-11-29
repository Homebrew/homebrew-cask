cask 'lackeyccg' do
  version :latest
  sha256 :no_check

  url 'http://www.lackeyccg.com/LackeyCCGMac.zip',
      user_agent: :fake
  name 'LackeyCCG'
  homepage 'http://www.lackeyccg.com/'

  suite 'LackeyCCG'
end
