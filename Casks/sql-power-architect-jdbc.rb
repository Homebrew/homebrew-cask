cask 'sql-power-architect-jdbc' do
  version '1.0.8'
  sha256 'a564e294aba5e7f4701717f8d36a898b06e6354000df332e5b6aa41377b06665'

  url "http://download.sqlpower.ca/architect/#{version}/community/SQL-Power-Architect-OSX-#{version}.tar.gz"
  name 'SQL Power Architect Community edition'
  homepage 'https://www.sqlpower.ca/'

  app 'SQL Power Architect JDBC.app'
end
