cask "font-oppo-sans" do
  version "4.0,202410,18,62d51f494591f1a9040d83b597745911"
  sha256 "f8bef382e209a4965fe589efdb72fd6bef45a9b4fdb494e20ffa16b31cd364d5"

  url "https://openfs.oppomobile.com/open/oop/#{version.csv.second}/#{version.csv.third}/#{version.csv.fourth}.zip"
  name "OPPO Sans"
  homepage "https://open.oppomobile.com/new/developmentDoc/info?id=13223"

  livecheck do
    url "https://open.oppomobile.com/wiki/new-doc/detail.json?doc_id=13223"
    regex(/Oppo\s+Sans\s+v?(\d+(?:\.\d+)+)/i)
    strategy :json do |json, regex|
      url_regex = %r{oop/(\d+)/(\d+)/(\h+)\.zip}i

      version_match = json.dig("data", "title")&.match(regex)
      next if version_match.blank?

      url_match = json.dig("data", "content")&.match(url_regex)
      next if url_match.blank?

      "#{version_match[1]},#{url_match[1]},#{url_match[2]},#{url_match[3]}"
    end
  end

  font "OPPO_Sans_#{version.csv.first}/OPPO Sans #{version.csv.first}.ttf"

  # No zap stanza required
end
