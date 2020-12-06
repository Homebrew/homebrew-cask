cask "foobar2000" do
  version :latest
  sha256 :no_check

  url do
    require "open-uri"

    base_url = "https://www.foobar2000.org"

    URI("#{base_url}/mac").open do |main_page|
      content = main_page.read

      hash_with_versioned_dmg = content.scan(%r{(href="/getfile/)([^"]+.dmg)}).flatten.second

      "#{base_url}/files/#{hash_with_versioned_dmg}"
    end
  end
  name "foobar2000"
  desc "Is an advanced freeware audio player for the Windows platform"
  homepage "https://www.foobar2000.org/"

  app "foobar2000.app"
end
