class Postgres < Cask
  url 'https://github.com/PostgresApp/PostgresApp/releases/download/9.3.1.0-alpha1/Postgres93.zip'
  homepage 'http://postgresapp.com/'
  version '9.3.1.0'
  sha1 'fa2c504fd791564484995226dd339b5b9eaa2519'
  link 'Postgres93.app'

  def caveats
    <<-EOS.undent
    To avoid linking issues with bundled libraries, Postgres must be located exactly at the following path:
      /Applications/Postgres93.app

    To satisfy this requirement, run `brew cask` like this:
      brew cask install postgres --appdir=/Applications

    EOS
  end
end
