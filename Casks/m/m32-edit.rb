cask "m32-edit" do
  version "4.4.1,-9wjMPE6KUuoA04LKN3i5Q,0kmo3C_Pjk-L7if9X24-xw"
  sha256 "6c508f2160d4a34f9d124e503e66263d726f3258b492c590c2beb69aa4fc5f22"

  url "https://cdn.mediavalet.com/aunsw/musictribe/#{version.csv.second}/#{version.csv.third}/Original/M32-Edit_MAC_#{version.csv.first}.zip",
      verified: "mediavalet.com/aunsw/musictribe/"
  name "M32 Edit"
  desc "Remote control for Midas M32 audio consoles"
  homepage "https://www.midasconsoles.com/product.html?modelCode=0603-AEO"

  livecheck do
    url "https://www.midasconsoles.com/.rest/musictribe/v1/products/media-library?brandName=midas&modelCode=0603-AEO"
    regex(%r{([^/]+)/([^/]+)/Original/M32[._-]Edit[._-]MAC[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :json do |json, regex|
      json.filter_map do |category|
        next if category["title"] != "Software"

        category["list"]&.map do |item|
          next unless item["title"]&.match?(/M32[._\s-]Edit[._\s-]Mac/i)

          match = item["url"]&.match(regex)
          next if match.blank?

          "#{match[3]},#{match[1]},#{match[2]}"
        end
      end.flatten
    end
  end

  depends_on macos: ">= :big_sur"

  app "M32-Edit.app"

  zap trash: "~/Library/.M32-Edit"
end
