cask 'couchbase-server-enterprise' do
  if MacOS.version <= :el_capitan
    version '4.5.1'
    sha256 'de014c7c134eb97ff00be6b2e6f5d0da84295ce05bbb7bb3a4d3c747a365cd22'
  else
    version '6.0.0'
    sha256 '5e0a8e9fb176905b3bab7b72a8474a3fb6be1b36790b1e2eb30de82249d5bbbc'
  end

  url "https://packages.couchbase.com/releases/#{version}/couchbase-server-enterprise_#{version}-macos_x86_64.zip"
  name 'Couchbase Server'
  homepage 'https://www.couchbase.com/'

  app "couchbase-server-enterprise_#{version}/Couchbase Server.app"
end
