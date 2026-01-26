cask "igv-desktop" do
  version "2.19.7"
  sha256 "4e03824984c846e681fe7eb5a18b77a5ca51a839788f65981365e543c267c1fa"

  url "https://data.broadinstitute.org/igv/projects/downloads/#{version.major_minor}/IGV_MacApp_#{version}.zip",
      verified: "data.broadinstitute.org/"
  name "Integrative Genomics Viewer (IGV)"
  desc "Visual exploration of genomic data"
  homepage "https://igv.org/doc/desktop/"

  livecheck do
    url "https://igv.org/doc/desktop/DownloadPage/"
    regex(/href=.*?IGV[._-]MacApp[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :big_sur"

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
