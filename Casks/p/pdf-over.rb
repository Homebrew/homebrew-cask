cask "pdf-over" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4.6.1,2025,09"
  sha256 arm:   "0e3d3faee6fdabcd1ea2e863eb66dd247f7a7d952497f1bd0c746cf5b78f35ec",
         intel: "6c1f2424ed851343dd9a7c336f84731faac503b14ab6203dd66fa41a1bb027e7"

  url "https://technology.a-sit.at/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/PDF-Over-#{version.csv.first}-#{arch}.dmg"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte or ID Austria"
  homepage "https://technology.a-sit.at/pdf-over/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/PDF[._-]Over[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  app "PDF-Over.app"

  zap trash: [
    "~/.pdf-over",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/at.a-sit.pdf-over.sfl*",
    "~/Library/Saved Application State/at.a-sit.PDF-Over.savedState",
  ]

  caveats do
    depends_on_java "8+"
  end
end
