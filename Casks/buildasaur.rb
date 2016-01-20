cask 'buildasaur' do
  version '0.6.5'
  sha256 'f153d41bb99222fdad7407588af41fd32cf5ed54463cbdb52490e27446b629e8'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom',
          checkpoint: 'fcd6687f2486601c8950858fb44d1a515ced2e8399366360b36c3c5f72017afd'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
