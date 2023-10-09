cask "igv" do
  version "2.16.2"
  sha256 "fbe955a658fe9d539f48a7278c406b20e5582fd4525a5975a7a9f6f99ee89215"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://software.broadinstitute.org/software/igv/"

  livecheck do
    url "https://data.broadinstitute.org/igv/projects/downloads/"
    regex(/href=.*?IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      major_minor = page.scan(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i).max_by do |match|
        Version.new(match.first)
      end.first
      next if major_minor.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content(url.sub(%r{/$}, "") + "/#{major_minor}/")
      next if version_page[:content].blank?

      version_page[:content].scan(regex).map(&:first)
    end
  end

  app "IGV_#{version}.app"

  zap trash: [
    "~/.igv",
    "~/Library/Preferences/org.broad.igv.plist",
    "~/igv",
  ]

  caveats do
    depends_on_java "11+"
  end
end
