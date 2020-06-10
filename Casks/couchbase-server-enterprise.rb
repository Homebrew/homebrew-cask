cask 'couchbase-server-enterprise' do
  if MacOS.version <= :el_capitan
    version '4.5.1'
    sha256 'de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22'

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
  else
    version '6.5.1'
    sha256 'c2f6969d60658d2873153627b23385c92109f88a36e45889fc39e26599f6fa0f'

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"
    appcast 'http://appcast.couchbase.com/membasex.xml'

    app 'Couchbase Server.app'
  end

  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'
end
