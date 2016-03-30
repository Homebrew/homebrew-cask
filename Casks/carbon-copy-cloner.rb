cask 'carbon-copy-cloner' do
  version '4.1.7,4285'
  sha256 'ca8a081d35606c899745bb40a64a461e14a00de7dd6e3bb48da3a3c05f265de8'

  url "http://bombich.com/software/files/ccc-#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://bombich.com/software/updates/ccc.php?os_minor=11&os_bugfix=#{version.major}&ccc=#{version.after_comma}&beta=0&locale=en",
          checkpoint: '9999510ec5d9c07a507c78b53d2a0ffd6f0457901e6d9ecd83325f3facb1947d'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'
  license :commercial

  app 'Carbon Copy Cloner.app'

  postflight do
    suppress_move_to_applications
  end
end
