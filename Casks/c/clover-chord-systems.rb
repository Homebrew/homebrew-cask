cask "clover-chord-systems" do
  version "2.5.1,2025.03"
  sha256 "4932d3664303a87512467a2ea9628780a0428c099f28f228c865fb76ec8ad6b7"

  url "https://clover-japon.co.jp/wp/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/CloverChordSystems_#{version.csv.first}.dmg"
  name "Clover Chord Systems"
  desc "Master rhythm and chord notation editor"
  homepage "https://clover-japon.co.jp/en/"

  livecheck do
    url "https://clover-japon.co.jp/en/download/"
    regex(%r{href=.*?/(\d+)/(\d+)/CloverChordSystems[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
    end
  end

  depends_on macos: ">= :monterey"

  pkg "CloverChordSystems#{version.major}.pkg"

  uninstall quit:    "jp.co.clover-japon.CloverChordSystems#{version.major}",
            pkgutil: "jp.co.clover-japon.CloverChordSystems#{version.major}"

  zap trash: [
    "~/Library/Application Scripts/jp.co.clover-japon.CloverChordSystems#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.co.clover-japon.cloverchordsystems#{version.major}.sfl*",
    "~/Library/Containers/jp.co.clover-japon.CloverChordSystems#{version.major}",
  ]
end
