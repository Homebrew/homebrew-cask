cask "igv-desktop" do
  version "2.19.6"
  sha256 "38b563bed6b20253c3c18271c434953ce5a16b643bca2b0eee0158aadfd3e5e2"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip",
      verified: "data.broadinstitute.org/"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://igv.org/doc/desktop/"

  livecheck do
    url "https://igv.org/doc/desktop/DownloadPage/"
    regex(/href=.*?IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "IGV_#{version}.app"

  zap trash: [
    "~/.igv",
    "~/igv",
    "~/Library/Preferences/org.broad.igv.plist",
  ]

  caveats do
    depends_on_java "21+"
  end
end
