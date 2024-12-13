cask "toneprint" do
  version "4.6.16,dBdeIScCJECmA6pTU4VfHA,bykSZtSgsUKVx3UABT5qSg,7+25e8c66a"
  sha256 "d9bbfef769a14ccf2a024218efb7164420211c9d68f2630dd31ce4edbce2d106"

  url "https://cdn.mediavalet.com/aunsw/musictribe/#{version.csv.second}/#{version.csv.third}/Original/Toneprint_#{version.csv.first}-public.#{version.csv.fourth}.dmg",
      verified: "cdn.mediavalet.com/aunsw/musictribe/"
  name "TonePrint"
  desc "Alter the character of your TonePrint pedal"
  homepage "https://www.tcelectronic.com/tonePrints.html"

  livecheck do
    url "https://www.tcelectronic.com/.rest/musictribe/v1/downloadcenter/solr-dldatatable?brandName=tcelectronic&modelCode=P0CLC&iDisplayStart=0&iDisplayLength=15"
    regex(%r{/musictribe/(\w+)/(\w+)/Original/TonePrint[._-]v?(\d+(?:\.\d+)+)[._-]public[._-](\d+\+\h+)\.dmg}i)
    strategy :json do |json, regex|
      json["aaData"]&.map do |item|
        next if item["subGroupName"] != "Mac"

        match = item.dig("url", "url")&.match(regex)
        next if match.blank?

        "#{match[3]},#{match[1]},#{match[2]},#{match[4]}"
      end
    end
  end

  app "Toneprint.app"

  zap trash: [
    "~/Library/Application Support/TonePrint",
    "~/Library/Caches/com.tcelectronic.toneprint",
  ]
end
