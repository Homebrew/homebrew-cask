cask 'icompta' do
  if MacOS.release <= :lion
    version '4.0.13'
    sha256 '8c7dcd69f4d38f2532a32ad7e14b5032811ac5b893566f46fef38b8c61a1f261'

    url "http://www.icompta-app.com/files/iCompta_#{version}.dmg"
    app 'iCompta.app'
  else
    version :latest
    sha256 :no_check

    url 'http://www.icompta-app.com/files/iCompta_Demo.zip'
    app 'iCompta Demo.app'
  end

  name 'iCompta'
  homepage 'http://www.icompta-app.com/'
  license :commercial

  depends_on macos: '>= :leopard'
end
