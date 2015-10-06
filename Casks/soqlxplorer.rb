cask :v1 => 'soqlxplorer' do
  version '2.20'
  sha256 '98e0c4184dc2870928df4791996afb1c5565652afd2375fc5f7fb89351efae25'

  url "http://www.pocketsoap.com/osx/soqlx/soqlXplorer_v#{version}.zip"
  appcast 'http://www.pocketsoap.com/osx/soqlx/appcast.xml',
          :sha256 => '16f0bf9d75169890328740496590cf71dc2c39e971139ec1a7ef052e641e092e'
  name 'SoqlXplorer'
  homepage 'http://www.pocketsoap.com/osx/soqlx/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SoqlXplorer.app'
end
