cask 'mudlet' do
  version '2.1'
  sha256 'c7c33cb0dba8223c094bed4caade243b0ae2fb70e71f0e18d2aa8434cc583bae'

  url "http://www.mudlet.org/download/Mudlet-#{version}.zip"
  name 'Mudlet'
  homepage 'http://www.mudlet.org'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "Mudlet-#{version}.app"
end
