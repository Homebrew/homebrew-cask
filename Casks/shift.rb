cask 'shift' do
  version '4.0.4'
  sha256 '87e3b94288ef28bfce062ceeb5cc4e76f7ce0b403571af77ade2ab219e414648'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
