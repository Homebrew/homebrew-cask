cask :v1 => 'hr' do
  version :latest
  sha256 :no_check

  url "http://www.hrmacapp.com/download"
  homepage 'http://www.hrmacapp.com/'
  license :unknown

  app 'hr.app'
end
