cask "pdf-over" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4.8,2026,03"
  sha256 arm:   "3dd4af2c5da185fd83f7d1bb6830879d5fe3dae69f38ce0df805e1813840e152",
         intel: "d0b592b2a17f072accec3d1491bbb29b9c81c0bd8add411d9a32582acd2cdfe4"

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
