cask 'osquery' do
  version '2.7.0'
  sha256 'e5eaf91b5582252f136476391cdd17985cc614536f964f38ddf7eb9cb69d0213'

  url "https://pkg.osquery.io/darwin/osquery-#{version}.pkg"
  name 'osquery'
  homepage 'https://osquery.io/'

  pkg "osquery-#{version}.pkg"

  uninstall pkgutil: 'com.facebook.osquery'
end
