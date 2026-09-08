cask "pdf-over" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4.9,2026,08"
  sha256 arm:   "80b46027a64c36547de58a65ea6644ebe9f46daf531c9cbf2ceea59551c3f299",
         intel: "a375486dab901ca3881c63d323a1b3a5ebfefb1da59cce5bbe6b85e7b2da724a"

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

  depends_on macos: :big_sur

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
