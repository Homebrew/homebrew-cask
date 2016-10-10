cask 'dash-dash' do
  version '0.12.0.58'
  sha256 '09af72ac52e3c5a62a4eb735a0cd3609c90808a54663b0fe1e5bd6a5f9a7745c'

  url "https://www.dash.org/binaries/dash-#{version}-osx.dmg"
  name 'Dash'
  homepage 'https://www.dash.org/'

  app 'Dash-Qt.app'

  preflight do
    set_permissions "#{staged_path}/Dash-Qt.app", '0755'
  end
end
