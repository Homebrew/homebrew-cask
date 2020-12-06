cask "foobar2000" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"

    base_url = "https://www.foobar2000.org"
    file = open("#{base_url}/mac").read.scan(/href="([^"]+.dmg)"/).flatten.first
    "#{base_url}#{file}"
  end
  name "foobar2000"
  desc "Is an advanced freeware audio player for the Windows platform"
  homepage "https://www.foobar2000.org/"

  app "foobar2000.app"
end
