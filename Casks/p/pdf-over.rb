cask "pdf-over" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.4.7,2025,12"
  sha256 arm:   "635256b16356d53cbd78109ece1ce86857dc90e60570dbc2a467bb87794b6fd6",
         intel: "68db812280c38a44d8d285545bd4ab2b771f631b490a07080af24dadc41e6135"

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
