cask "sparsity" do
  version "1.3,2023.04"
  sha256 "9eb8360df38c0017b86b8113db3ec15e1a3e48f5af7ca77d692278d5b5ecb967"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.csv.first.no_dots}.zip"
  name "Sparsity"
  desc "Create and find APFS sparse files"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/sparsity[^"' >]*?\.zip[^>]*?>\s*sparsity\s+v?(\d+(?:\.\d+)*)[^a-z)]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]}.#{match[1]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  app "sparsity#{version.csv.first.no_dots}/Sparsity.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.sparsity.sfl*",
    "~/Library/Preferences/co.eclecticlight.Sparsity.plist",
    "~/Library/Saved Application State/co.eclecticlight.Sparsity.savedState",
  ]
end
