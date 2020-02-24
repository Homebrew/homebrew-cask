cask 'couchbase-server-enterprise' do
  if MacOS.version <= :el_capitan
    version '4.5.1'
    sha256 'de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22'

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"

    app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
  else
    version '6.5.0'
    sha256 'd6eec86d867dd0ffc39bd9e4ac8832fa607076bc9446105a063d1a7e2ca7c0ee'

    url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.dmg"

    app 'Couchbase Server.app'
  end

  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'
end
