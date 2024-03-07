cask "ibabel" do
  version "5.0.3,2023,02"
  sha256 "25e8c5a311e0a45b5e5cb519fe00ab8b6b9084f5045ee18639649295f39cbc19"

  url "https://macinchem.org/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/iBabel.zip"
  name "iBabel"
  desc "GUI for the cheminformatics toolkit OpenBabel"
  homepage "https://www.macinchem.org/ibabel/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/uploads/(\d+)/(\d+)/iBabel\.zip}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)

      cask = CaskLoader.load(__FILE__)
      download_url = "https://macinchem.org/wp-content/uploads/#{match[1]}/#{match[2]}/iBabel.zip"
      app_version = Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask:,
                                                                              url:  download_url)[:matches].values.max
      next if app_version.blank?

      "#{app_version.to_s.split(",").first},#{match[1]},#{match[2]}"
    end
  end

  depends_on formula: "open-babel"
  depends_on macos: ">= :monterey"

  app "iBabel.app"

  zap trash: [
    "~/Library/Caches/com.macinchem.iBabel",
    "~/Library/WebKit/com.macinchem.iBabel",
  ]
end
