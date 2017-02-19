cask 'couchbase-server-enterprise' do
  if MacOS.version <= :el_capitan
    version '4.5.1'
    sha256 'de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22'
  else
    version '4.6.0-DP'
    sha256 '4b52ad87d703c235b2f9e4e63a8c1b6f4a720d36b28b81cbf593947256399a3f'
  end

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-enterprise_#{version.major}/Couchbase Server.app"
end
